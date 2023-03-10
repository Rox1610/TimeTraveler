class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.text :comment
      t.integer :status, default: 0, null: false
      t.references :user, null: false, foreign_key: true
      t.references :era, null: false, foreign_key: true

      t.timestamps
    end
  end
end
