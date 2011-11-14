class AddUnittypesIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :unittype_id, :integer
  end

  def self.down
    remove_column :contracts, :unittype_id
  end
end
