class Caremanager < ActiveRecord::Base

	has_many :customers, dependent: :destroy

	extend Enumerize

	enumerize :sex, :in => [:male, :female], scope: true
	enumerize :status, :in => { active: 1, blocked: 2 }, scope: :true

	validates :name, presence: true
	validates :name_kana, presence: true
	validates :sex, presence: true
	validates :age, presence: true
	validates :postal_code, presence: true
	validates :address, presence: true
	validates :phone_num, presence: true
	validates :mail, presence: true
	validates :company, presence: true


end
