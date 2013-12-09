class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.string :reviewer_email
      t.timestamp :date
      t.integer :book_id
      t.string :reviewer_ip
      t.boolean :approval
      t.text :content

      t.timestamps
    end
  end
end
