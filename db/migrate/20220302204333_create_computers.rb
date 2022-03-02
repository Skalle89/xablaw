class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :placa_de_video
      t.string :ram
      t.string :processador
      t.integer :price_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
