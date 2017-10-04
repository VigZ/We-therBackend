class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :date
      t.string :high
      t.string :low
      t.string :precipitation
      t.string :wind
      t.string :current
      t.string :pop
      t.string :pref
      t.timestamps
    end
  end
end
