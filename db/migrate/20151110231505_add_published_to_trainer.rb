class AddPublishedToTrainer < ActiveRecord::Migration
  def change
    add_column :trainers, :published, :boolean
  end
end
