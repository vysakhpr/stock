class Office < ActiveRecord::Base
  has_many :labs
  attr_accessible :date, :department, :description, :name, :price_unit, :quantity, :total_price, :voucher_no

  validates_presence_of :date,:department,:description,:name,:price_unit,:quantity,:total_price,:voucher_no
  validates_uniqueness_of :voucher_no
  validates_numericality_of :quantity
end
