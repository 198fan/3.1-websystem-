class RemoveBooksFromStorages < ActiveRecord::Migration[7.0]
  def change
    remove_reference :books, :storages, index: true
  end
end
