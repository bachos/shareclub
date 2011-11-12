class AddLinerIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :liner_id, :integer
  end

  def self.down
    remove_column :contracts, :liner_id
  end
end
