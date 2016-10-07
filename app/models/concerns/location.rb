class Location < ActiveRecord::Base
    has_many :tapes
    has_many :checkouts
    has_many :loans, through: :checkouts, source: :tape
    validates :name, presence: true, length: {minimum: 3, maximum: 25},
                                            uniqueness: true
                                            
    def all_tapes
      tapes + loans
    end

end