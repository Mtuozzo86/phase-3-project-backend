class Barbershops < ActiveRecord::Migration[6.1]
  def change
    create_table :barbershops do |t|
      t.string :name
      t.timestamps
    end
  end
end
