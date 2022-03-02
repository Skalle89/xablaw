class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :processador
      t.string :placa_de_video
      t.string :ram
      t.integer :price_day
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
