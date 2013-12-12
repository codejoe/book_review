class Category < ActiveRecord::Base
  has_many :category_books
  has_many :books, through: :category_books
  # def name_with_initial
  #   "#{:name}"
  # end
end
