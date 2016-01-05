class Staff < ActiveRecord::Base

	has_many :customers, dependent: :destroy

	validates :name, presence: true
	validates :name_kana, presence: true

	extend Enumerize

	enumerize :sex, :in => [:male, :female], scope: true
	enumerize :status, :in => { active: 1, blocked: 2 }, scope: :true
	enumerize :role, :in => [:manager, :helper], scope: true


end
