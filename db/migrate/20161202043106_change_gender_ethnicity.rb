class ChangeGenderEthnicity < ActiveRecord::Migration
  def change
  	rename_column :users, :gender, :gender_id
  	rename_column :users, :ethnicity, :ethnicity_id
  end
end
