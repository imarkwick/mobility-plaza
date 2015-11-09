class AddPriceToTrainer < ActiveRecord::Migration
  def change
    add_column :trainers, :price, :decimal
  end
end
