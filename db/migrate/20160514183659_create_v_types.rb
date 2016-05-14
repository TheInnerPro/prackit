class CreateVTypes < ActiveRecord::Migration
  def change
    create_table :v_types do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
