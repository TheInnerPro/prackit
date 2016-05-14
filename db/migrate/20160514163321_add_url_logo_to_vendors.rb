class AddUrlLogoToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :url, :string
    add_column :vendors, :logo, :string
  end
end
