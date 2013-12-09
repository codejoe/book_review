class CategoryBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
end
