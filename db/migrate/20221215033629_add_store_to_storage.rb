class AddStoreToStorage < ActiveRecord::Migration[7.0]
  def change
    add_reference :storages, :stores
    add_reference :storages, :books
  end
end
