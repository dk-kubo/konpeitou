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
end