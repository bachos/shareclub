class AddPorcentajeToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :porcentaje_enganche, :integer
  end

  def self.down
    remove_column :contracts, :porcentaje_enganche
  end
end
