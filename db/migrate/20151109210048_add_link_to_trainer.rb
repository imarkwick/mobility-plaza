class AddLinkToTrainer < ActiveRecord::Migration
  def change
    add_column :trainers, :link, :string
  end
end
