class CreateCategoryBooks < ActiveRecord::Migration
  def change
    create_table :category_books do |t|
      t.integer :category_id
      t.integer :book_id

      t.timestamps
    end
  end
end
