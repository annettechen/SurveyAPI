class RestrictionSerializer < ActiveModel::Serializer
  attributes :age_ub, :age_lb, :loc_center_long, :loc_center_lat, :loc_radius
end