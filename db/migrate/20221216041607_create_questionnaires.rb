class CreateQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaires do |t|
      t.text :content
      t.datetime :datecomp

      t.timestamps
    end
  end
end
