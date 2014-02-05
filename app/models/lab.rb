class Lab < ActiveRecord::Base
  belongs_to :user
  belongs_to :office
  attr_accessible :office_id, :quantity, :quantity_used, :status, :user_id
end
