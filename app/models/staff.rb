class Staff < ActiveRecord::Base

	has_many :customers, dependent: :destroy


	extend Enumerize

	enumerize :sex, :in => [:male, :female], scope: true
	enumerize :status, :in => { active: 1, blocked: 2 }, scope: :true
	enumerize :role, :in => [:manager, :helper], scope: true

end
