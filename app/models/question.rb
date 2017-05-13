class Question < ApplicationRecord

  validates_presence_of :question_type_id

  has_many :chapters_questions
  has_many :exams_questions
  belongs_to :question_type
  has_many :bookmarks, as: :bookmarkable

end