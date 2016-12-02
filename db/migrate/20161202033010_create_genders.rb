class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.integer :name

      t.timestamps null: false
    end
  end
end
