class AddMultiplierIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :multiplier_id, :integer
  end

  def self.down
    remove_column :contracts, :multiplier_id
  end
end
