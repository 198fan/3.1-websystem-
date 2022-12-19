class AddCustomerToQuestionnaire < ActiveRecord::Migration[7.0]
  def change
    add_reference :questionnaires, :customer
  end
end
