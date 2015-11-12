class Colour < ActiveRecord::Base
  has_many :trainer_colours, inverse_of: :colour
  has_many :trainers, through: :trainer_colours
end
