class RemoveBookFromOrderdetail < ActiveRecord::Migration[7.0]
  def change
    remove_reference :orderdetails, :books, index: true
    add_reference :orderdetails, :books, type: :string
  end
end
