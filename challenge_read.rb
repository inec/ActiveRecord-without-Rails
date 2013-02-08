load 'ar.rb'



number_of_products = Product.count
puts "There are toatl #{number_of_products} in my product table."



puts ""
puts "The names of all products above $10 with names that begin with the letter C. are"
product_price=Product.where('price > 10')
products_with_c_names=product_price.where('name LIKE "c%"')

products_with_c_names.each do |product|
	puts product.name
end

puts ""
prodcuts_low= Product.where("stock_quantity <= 5")

#prodcuts_low.each {|x| puts x.name,x.stock_quantity}
#puts product_low.
puts "Total number of products with a low stock quantity is #{prodcuts_low.count}"

puts ""

oneproduct=Product.first
	puts "the #{oneproduct.name} is belong to #{oneproduct.category.name} category"

c = Customer.first
puts c.inspect
