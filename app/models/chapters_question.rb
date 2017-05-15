class ChaptersQuestion < ApplicationRecord

  validates_presence_of :chapter_id, :question_id

  belongs_to :chapter
  belongs_to :question
end