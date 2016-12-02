class CreateRestrictionGenders < ActiveRecord::Migration
  def change
    create_table :restriction_genders do |t|
      t.integer :restriction_id
      t.integer :gender_id

      t.timestamps null: false
    end
  end
end
