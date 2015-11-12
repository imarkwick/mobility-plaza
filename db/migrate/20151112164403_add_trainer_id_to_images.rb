class AddTrainerIdToImages < ActiveRecord::Migration
  def change
    add_reference :images, :trainer, index: true, foreign_key: true
  end
end
