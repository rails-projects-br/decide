class CreateDecisions < ActiveRecord::Migration[5.0]
  def change
    create_table :decisions do |t|
      t.text :decision
      t.integer :score
      t.references :problem, foreign_key: true

      t.timestamps
    end
  end
end
