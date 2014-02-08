class AddColumnToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :quantity_assigned, :integer, :default => 0
  end
end
