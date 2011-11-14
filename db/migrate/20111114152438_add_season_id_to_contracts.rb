class AddSeasonIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :season_id, :integer
  end

  def self.down
    remove_column :contracts, :season_id
  end
end
