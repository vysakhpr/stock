class ChangeDefaultForLabStatus < ActiveRecord::Migration
  def change
    change_column :labs, :status, :string, :default => "P"
  end

end
