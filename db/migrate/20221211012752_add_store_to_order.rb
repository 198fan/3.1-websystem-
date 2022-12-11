class AddStoreToOrder < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :store
  end
end
