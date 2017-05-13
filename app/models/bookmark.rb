class Bookmark < ApplicationRecord

  validates_presence_of :student_id

  belongs_to :student
end