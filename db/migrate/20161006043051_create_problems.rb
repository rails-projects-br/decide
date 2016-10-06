class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.string :ha
      t.integer :score
      t.boolean :open

      t.timestamps
    end
  end
end
