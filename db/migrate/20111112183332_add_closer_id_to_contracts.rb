class AddCloserIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :closer_id, :integer
  end

  def self.down
    remove_column :contracts, :closer_id
  end
end
