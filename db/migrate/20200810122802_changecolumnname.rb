class Changecolumnname < ActiveRecord::Migration[6.0]
  def change
    rename_column :warriors, :type, :warrior_type
  end
end
