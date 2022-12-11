class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores, id: false  do |t|
      t.integer :storeid, null: false, primary_key: true
      t.string :storename
      t.string :mail
      t.text :address

      t.timestamps
    end
  end
end
