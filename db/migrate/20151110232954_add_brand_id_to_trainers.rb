class AddBrandIdToTrainers < ActiveRecord::Migration
  def change
    add_reference :trainers, :brand, index: true, foreign_key: true
  end
end
