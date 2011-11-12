class AddSellerIdToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :seller_id, :integer
  end

  def self.down
    remove_column :contracts, :seller_id
  end
end
