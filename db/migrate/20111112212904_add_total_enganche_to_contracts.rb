class AddTotalEngancheToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :total_enganche, :float
  end

  def self.down
    remove_column :contracts, :total_enganche
  end
end
