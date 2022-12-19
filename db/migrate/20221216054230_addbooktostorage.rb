class Addbooktostorage < ActiveRecord::Migration[7.0]
  def change
    add_reference :storages, :books, type: :string
  end
end
