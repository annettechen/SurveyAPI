class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender_id, :taker, :creator, :ethnicity_id, :points, :fbtoken
end
