class Student < ApplicationRecord

  validates_presence_of :name, :user_id
  belongs_to :user
  has_many :exams
  has_many :bookmarks
end