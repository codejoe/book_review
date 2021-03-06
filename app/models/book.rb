class Book < ActiveRecord::Base
  has_one   :category_book
  has_one   :category, through: :category_book
  has_many  :reviews

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/:style/missing.png" #/images/:style/missing.png
  scope :featured,  -> { where(featured: true) }
  paginates_per 9
  acts_as_commentable
  scope :news,  -> { where("date_release > ?", Time.now) }
  acts_as_votable
end
