class AddColourIdToTrainer < ActiveRecord::Migration
  def change
    add_reference :trainers, :colour, index: true, foreign_key: true
  end
end
