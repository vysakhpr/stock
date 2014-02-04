class User < ActiveRecord::Base
  attr_accessible :department, :position, :username

  validates_presence_of :username,:department,:position
  validates :username, uniqueness: :true
end
