class AddCategoryIdToTrainers < ActiveRecord::Migration
  def change
    add_reference :trainers, :category, index: true, foreign_key: true
  end
end
