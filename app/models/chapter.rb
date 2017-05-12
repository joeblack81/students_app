class Chapter < ApplicationRecord

validates_presence_of :subject_id, :weight, :name

  belongs_to :subject
  has_many :chapters_questions

  acts_as_list column: 'weight', scope: :subject
end