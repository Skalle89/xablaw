class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :users
      t.references :computers
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
