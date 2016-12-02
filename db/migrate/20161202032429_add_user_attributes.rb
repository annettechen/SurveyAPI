class AddUserAttributes < ActiveRecord::Migration
  def change
  	add_column :users, :ethnicity, :integer
  	add_column :users, :points, :integer
  end
end
