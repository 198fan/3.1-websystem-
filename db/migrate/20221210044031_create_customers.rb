class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers, id: false do |t|
      t.integer :custid, null: false, primary_key: true
      t.string :name
      t.integer :age
      t.string :email
      t.string :pass

      t.timestamps
    end
  end
end
