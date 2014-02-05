class Lab < ActiveRecord::Base
  has_one :user
  has_one :office
  attr_accessible :office_id, :quantity, :quantity_used, :status, :user_id
end
