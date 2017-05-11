class Reading < ApplicationRecord
validates_presence_of :reading_type_id, :subject_id

  belongs_to :subject
end