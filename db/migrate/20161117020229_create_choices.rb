class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.json :value
      t.integer :question_id
      t.boolean :selected

      t.timestamps null: false
    end
  end
end
