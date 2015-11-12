class Colour < ActiveRecord::Base
  has_many :trainers, inverse_of: :colour
end
