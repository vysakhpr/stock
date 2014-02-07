class Lab < ActiveRecord::Base
  belongs_to :user
  belongs_to :office
  belongs_to :labid
  attr_accessible :office_id, :quantity, :quantity_used, :status, :user_id

  validates_presence_of :office_id, :quantity_used, :status,:user_id
  validates_inclusion_of :status, :in=> %w(P R I W)
end
