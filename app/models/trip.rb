class Trip < ApplicationRecord
  validates_presence_of :trip_name
  has_many :locations
  belongs_to :user
end
