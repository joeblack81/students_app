class Subject < ApplicationRecord
  validates_presence_of :name, :mobile_version, :backend_version, :token, :menu_items

  has_many :readings
  has_many :chapters, -> { order(weight: :asc) }

end