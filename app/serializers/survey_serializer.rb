class SurveySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :est_time, :points, :url
end
