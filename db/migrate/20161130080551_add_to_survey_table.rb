class AddToSurveyTable < ActiveRecord::Migration
  def change
  	add_column :surveys, :est_time, :integer
  	add_column :surveys, :points, :integer
  	add_column :surveys, :url, :string

  	remove_column :surveys, :active
  end
end
