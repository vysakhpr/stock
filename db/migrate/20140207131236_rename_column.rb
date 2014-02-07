class RenameColumn < ActiveRecord::Migration
  def change
 	rename_column :labs, :lab_id, :labid_id
  end
end
