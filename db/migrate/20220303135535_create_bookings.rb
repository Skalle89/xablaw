class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_time
      t.references :user_id, null: false, foreign_key: true
      t.references :computer_id, null: false, foreign_key: true
      t.boolean :available
      t.integer :total_price

      t.timestamps
    end
  end
end
