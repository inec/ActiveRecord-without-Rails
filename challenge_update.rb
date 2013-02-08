load 'ar.rb'

# UPDATING ROWS WITH ACTIVE RECORD

# Find a product by primary key.

products_updated = Product.where('stock_quantity > 40')

products_updated.each do |product|
puts product.stock_quantity
product.stock_quantity+=1
product.save
end
puts ""
puts products_updated.count
