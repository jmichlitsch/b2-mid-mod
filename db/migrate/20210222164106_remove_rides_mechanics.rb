class RemoveRidesMechanics < ActiveRecord::Migration[5.2]
  def change
    drop_table :rides_mechanics
  end
end
