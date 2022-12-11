class Fix < ActiveRecord::Migration[7.0]
  def change
    add_index :customers, :custid, unique: true
    add_index :stores, :storeid, unique: true
  end
end
