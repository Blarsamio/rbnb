class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :job
      t.references :user, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
