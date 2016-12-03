class ConnectSurveyRestriction < ActiveRecord::Migration
  def change
  	remove_column :surveys, :restriction_id
  	add_column :restrictions, :survey_id, :integer
  end
end
