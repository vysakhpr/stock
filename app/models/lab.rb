class Lab < ActiveRecord::Base
  attr_accessible :office_id, :quantity, :quantity_used, :status, :user_id
end
