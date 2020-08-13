class AddPirateIdToShips < ActiveRecord::Migration[6.0]
  def change
    add_column :ships, :pirate_id, :integer
  end
end
