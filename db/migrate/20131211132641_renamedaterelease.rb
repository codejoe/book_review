class Renamedaterelease < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.rename :date_relaese, :date_release
    end
  end
end
