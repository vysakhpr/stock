class User < ActiveRecord::Base

  has_many :labs
  has_many :labids
  has_many :send_messages, :class_name => 'Message', :foreign_key => :sender_id 
  has_many :received_messages, :class_name => 'Message', :foreign_key => :receiver_id 
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :department, :position, :username

  validates_presence_of :username,:department,:position
  validates :username, uniqueness: :true
  validates_inclusion_of :department, :in=> %w(CS EC EE OF)
  validates_inclusion_of :position, :in=> %w(HD OF HM LC)
end
