class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :department
      t.string :position

      t.timestamps
    end
  end
end
