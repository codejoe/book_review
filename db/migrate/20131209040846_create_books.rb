class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.timestamp :date_relaese
      t.integer :number_of_page
      t.integer :number_of_rate
      t.boolean :featured
      t.integer :category_id
      t.string :link_picture

      t.timestamps
    end
  end
end
