class Show < ActiveRecord::Base
  has_and_belongs_to_many :tapes
  validates :name, presence: true
end