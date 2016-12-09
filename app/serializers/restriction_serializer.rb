class RestrictionSerializer < ActiveModel::Serializer
  attributes :id, :age_ub, :age_lb, :loc_center_long, :loc_center_lat, :loc_radius, :survey_id
end