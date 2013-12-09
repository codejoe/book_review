class Book < ActiveRecord::Base
  has_one   :category_book
  has_one   :category, through: :category_book
  has_many  :reviews
end
