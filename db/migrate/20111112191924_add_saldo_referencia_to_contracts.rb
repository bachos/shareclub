class AddSaldoReferenciaToContracts < ActiveRecord::Migration
  def self.up
    add_column :contracts, :saldo_referencia, :float
  end

  def self.down
    remove_column :contracts, :saldo_referencia
  end
end
