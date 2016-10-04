class Location < ActiveRecord::Base
    # has_many :tapes
    validates :name, presence: true, length: {minimum: 3, maximum: 25}
end