class CreateTes < ActiveRecord::Migration
  def change
    create_table :tes do |t|

      t.timestamps
    end
  end
end
