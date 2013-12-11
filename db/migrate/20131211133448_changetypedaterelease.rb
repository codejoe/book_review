class Changetypedaterelease < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :books do |t|
        dir.up   { t.change :date_release, :date }
        dir.down { t.change :date_release, :timestamp }
      end
    end
  end
end
