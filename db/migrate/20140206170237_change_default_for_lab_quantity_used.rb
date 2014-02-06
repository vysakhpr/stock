class ChangeDefaultForLabQuantityUsed < ActiveRecord::Migration
 def change
    change_column :labs, :quantity_used, :integer,:default => 0
  end
end
