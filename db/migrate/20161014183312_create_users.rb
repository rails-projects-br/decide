class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :email
      t.string :name
      t.string :image
      add_index :users, :provider
      add_index :users, :uid
      add_index :users, [:provider, :uid], unique: true

      t.timestamps
    end
  end
end
