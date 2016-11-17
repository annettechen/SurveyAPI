class QuestionSerializer < ActiveModel::Serializer
  attributes :text, :question_type, :survey_id
end
