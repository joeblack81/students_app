
class ReadingType < ApplicationRecord

  validates_presence_of :name

  has_many :readings
end