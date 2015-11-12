class AddTrainerIdToTrainerColours < ActiveRecord::Migration
  def change
    add_reference :trainer_colours, :trainer, index: true, foreign_key: true
  end
end
