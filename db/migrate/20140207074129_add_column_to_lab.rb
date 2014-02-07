class AddColumnToLab < ActiveRecord::Migration
  def change
    add_column :labs, :lab_id, :string
  end
end
