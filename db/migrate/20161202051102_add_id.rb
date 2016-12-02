class AddId < ActiveRecord::Migration
  def change
  	add_column :surveys, :restriction_id, :integer
  end
end
