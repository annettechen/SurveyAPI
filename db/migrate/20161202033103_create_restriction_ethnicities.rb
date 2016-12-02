class CreateRestrictionEthnicities < ActiveRecord::Migration
  def change
    create_table :restriction_ethnicities do |t|
      t.integer :restriction_id
      t.integer :ethnicity_id

      t.timestamps null: false
    end
  end
end
