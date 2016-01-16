class Customer < ActiveRecord::Base
  belongs_to :staff
  has_many :cus_families, dependent: :destroy
  belongs_to :caremanager
  has_many :care_records, dependent: :destroy

	accepts_nested_attributes_for :cus_families, allow_destroy: true

    extend Enumerize

    enumerize :sex, :in => [:male, :female], scope: true
    enumerize :status, :in => { enroll: 1, withdraw: 2 }, scope: :true
    enumerize :household, :in => [:alone, :elderly_only, :other], scope: true

    #validates :name, presence: true
    validates :postal_code, presence: true, length: { is: 7 }
    validates :home_num, length: { in: 10..11 }
    validates :phone_num, length: { is: 11 }

  def add_error_sample
    # nameが空のときにエラーメッセージを追加する
    if name.blank?
      errors[:base] << "氏名は必ず入力して下さい"
    end
	end


end