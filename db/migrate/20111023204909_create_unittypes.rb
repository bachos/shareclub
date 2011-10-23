class CreateUnittypes < ActiveRecord::Migration
  def self.up
    create_table :unittypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :unittypes
  end
end
