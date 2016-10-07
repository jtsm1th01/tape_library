class Tape < ActiveRecord::Base
  belongs_to :home, class_name: "Location", foreign_key: "location_id"
  belongs_to :format
  has_and_belongs_to_many :shows
  has_one :checkout
  has_one :location, through: :checkout
  validates :name, presence: true, uniqueness: true
  validates :description, length:{maximum:100}

end