class Labid < ActiveRecord::Base
  has_many :labs
  belongs_to :user
  attr_accessible :name, :user_id

  validates_presence_of :name, :user_id
  validates_uniqueness_of :name
end
