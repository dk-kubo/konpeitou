class CareRecord < ActiveRecord::Base
  belongs_to :staff_id, foreign_key: "staff_id"
  belongs_to :customer_id, foreign_key: "customer_id"


	extend Enumerize

	enumerize :status, :in => { midstream: 1, complete: 2 }, scope: :true
end
