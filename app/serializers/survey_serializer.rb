class SurveySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :points, :url
end
