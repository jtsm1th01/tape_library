class ShowTape < ActiveRecord::Base
  belongs_to :show
  belongs_to :tape
end