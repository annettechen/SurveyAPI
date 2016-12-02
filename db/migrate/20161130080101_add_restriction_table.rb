class AddRestrictionTable < ActiveRecord::Migration
  def change
  	create_table :restrictions do |t|
      t.integer    :gender
      t.integer    :age_ub
      t.integer    :age_lb
      t.float      :loc_center_long
      t.float      :loc_center_lat
      t.integer    :loc_radius
      t.integer	   :num_takers

      t.timestamps null: false
    end
  end
end
