class AddColourIdToTrainerColours < ActiveRecord::Migration
  def change
    add_reference :trainer_colours, :colour, index: true, foreign_key: true
  end
end
