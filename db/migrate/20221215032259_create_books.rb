class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books, id: false  do |t|
      t.string :isbn, null: false, primary_key: true
      t.string :title
      t.string :author
      t.string :pubcom
      t.integer :price

      t.timestamps
    end
  end
end
