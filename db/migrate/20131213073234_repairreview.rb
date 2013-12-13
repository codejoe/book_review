class Repairreview < ActiveRecord::Migration
  def self.down
    drop_table :reviews
  end
end
