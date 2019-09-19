class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :content
      t.boolean :complete
      t.references :board
      
      t.timestamps
    end
  end
end
