class Book < ActiveRecord::Base
  has_one   :category_book
  has_one   :category, through: :category_book
  has_many  :reviews
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  paginates_per 10
end
