class CreateTextResponses < ActiveRecord::Migration
  def change
    create_table :text_responses do |t|
      t.json :value
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
