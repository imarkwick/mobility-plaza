class CreateTrainerColours < ActiveRecord::Migration
  def change
    create_table :trainer_colours do |t|

      t.timestamps null: false
    end
  end
end
