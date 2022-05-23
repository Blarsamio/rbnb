class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.integer :rating
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
