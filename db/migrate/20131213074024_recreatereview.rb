class Recreatereview < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer   :user_id
      t.integer   :book_id
      t.text      :review
      t.date      :date
      t.timestamps
    end
  end
end
