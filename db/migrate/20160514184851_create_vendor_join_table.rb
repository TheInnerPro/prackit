class CreateVendorJoinTable < ActiveRecord::Migration
  def change
    create_join_table :vendors, :v_types do |t|
      # t.index [:vendor_id, :v_type_id]
      t.index [:v_type_id, :vendor_id], unique: true
    end
  end
end
