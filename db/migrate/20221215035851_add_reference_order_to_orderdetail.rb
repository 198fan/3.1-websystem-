class AddReferenceOrderToOrderdetail < ActiveRecord::Migration[7.0]
  def change
    add_reference :orderdetails, :orders
    add_reference :orderdetails, :books
  end
end
