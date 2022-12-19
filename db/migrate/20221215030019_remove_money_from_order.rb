class RemoveMoneyFromOrder < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :money, :integer
  end
end
