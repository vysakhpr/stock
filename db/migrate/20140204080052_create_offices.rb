class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.date :date
      t.string :voucher_no
      t.string :name
      t.string :description
      t.float :price_unit
      t.integer :quantity
      t.float :total_price
      t.string :department

      t.timestamps
    end
  end
end
