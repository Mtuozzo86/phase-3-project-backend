class RemoveBarbershopTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :barbershops
  end
end
