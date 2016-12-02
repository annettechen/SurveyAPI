class RemoveGenderFromTable < ActiveRecord::Migration
  def change
  	remove_column :restrictions, :gender
  end
end
