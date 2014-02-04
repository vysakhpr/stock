class Office < ActiveRecord::Base
  attr_accessible :date, :department, :description, :name, :price, :quantity, :total_price, :voucher_no
end
