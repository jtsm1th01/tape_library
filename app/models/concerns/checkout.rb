class Checkout < ActiveRecord::Base
  belongs_to :tape
  belongs_to :location
  # belongs_to :user
end