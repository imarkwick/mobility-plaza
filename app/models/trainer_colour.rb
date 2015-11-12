class TrainerColour < ActiveRecord::Base
  belongs_to :trainer, inverse_of: :trainer_colours
  belongs_to :colour, inverse_of: :trainer_colours
end
