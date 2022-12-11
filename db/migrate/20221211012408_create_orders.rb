class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: false  do |t|
      t.integer :order_id, null: false, primary_key: true
      t.date :transdate

      t.timestamps
    end
  end
end
