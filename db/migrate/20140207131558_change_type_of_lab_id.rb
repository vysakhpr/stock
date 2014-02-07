class ChangeTypeOfLabId < ActiveRecord::Migration
 change_table :labs do |t|  
  t.change :labid_id, :integer 
end
end
