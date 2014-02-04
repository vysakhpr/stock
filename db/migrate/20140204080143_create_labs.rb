class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.integer :office_id
      t.integer :quantity
      t.integer :quantity_used
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
