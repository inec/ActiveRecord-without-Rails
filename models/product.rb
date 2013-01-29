class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  belongs_to :category
  validates_presence_of  :name, :description, :price
   validates_uniqueness_of :name
end