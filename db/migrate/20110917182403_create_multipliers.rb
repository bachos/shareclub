class CreateMultipliers < ActiveRecord::Migration
  def self.up
    create_table :multipliers do |t|
      t.integer :valor

      t.timestamps
    end
  end

  def self.down
    drop_table :multipliers
  end
end
