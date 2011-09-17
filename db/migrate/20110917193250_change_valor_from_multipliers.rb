class ChangeValorFromMultipliers < ActiveRecord::Migration
  def self.up
    change_column(:multipliers, :valor, :float)
  end
  
  def self.down
    
  end  
end
