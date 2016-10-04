class Tape < ActiveRecord::Base
  belongs_to :home, class_name: "Location", foreign_key: "location_id"
  validates :name, presence: true, uniqueness: true
  validates :description, length:{maximum:100}

end