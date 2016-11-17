class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :question_type
      t.boolean :required
      t.integer :survey_id
      t.boolean :required

      t.timestamps null: false
    end
  end
end
