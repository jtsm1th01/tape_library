class Tape < ActiveRecord::Base
  belongs_to :home, class_name: "Location", foreign_key: "location_id"
  has_and_belongs_to_many :shows
  validates :name, presence: true, uniqueness: true
  validates :description, length:{maximum:100}

end