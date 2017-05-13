class ExamsQuestion < ApplicationRecord

  validates_presence_of :user_answers, :question_id, :exam_id

belongs_to :question
belongs_to :exam
end