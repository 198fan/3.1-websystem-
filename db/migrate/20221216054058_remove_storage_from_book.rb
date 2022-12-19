class RemoveStorageFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_reference :storages, :books, index: true
  end
end
