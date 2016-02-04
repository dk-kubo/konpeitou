class CareRecord < ActiveRecord::Base
  belongs_to :staff
  belongs_to :customer


	extend Enumerize

	enumerize :status, :in => { midstream: 1, complete: 2 }, scope: :true
end
