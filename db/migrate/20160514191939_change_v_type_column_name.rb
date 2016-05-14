class ChangeVTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :v_types, :type, :name
  end
end
