class AddGastosContratacionToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :gastos_contratacion, :float
  end

  def self.down
    remove_column :contracts, :gastos_contratacion
  end
end
