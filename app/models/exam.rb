class Exam < ApplicationRecord

  validates_presence_of :student_id, :completed

  belongs_to :student
  has_many :exams_questions

end