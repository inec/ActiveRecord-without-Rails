load 'ar.rb'


#     Use the Category model class to persist three new categories to the categories database table.

cat1=Category.new(:name=>"name2",
	:description=>"desc2" 

	)
cat1.save
  cat1=Category.create(:name => "name3",
  					:description=>"desc3"
  	)
puts Category.all.count

#     Find a specific category and delete is from the categories database table.

cats=Category.where(:name=>"name2").first
cats.destroy
puts Category.all.size

#     Find a specific category, update its properties, and persist it back to the categories database table.
cats=Category.where(:name=>"name3").first
cats.description="modieid3"
puts cats.inspect
#     Find all products with a price less than $20. Print all the names and prices of these products.
products_under_20=Product.where("price < 20")
products_under_20.each do |product|
puts "name: #{product.name},price is: #{product.price}"
end

#     Count the products whose name ends in the letter s.
product_end_with_s=Product.where("name like '%s'")
puts product_end_with_s.size
#     Find the last 30 products when ordered reverse alphabetically. Print all the names and stock quantities of these products.
product_30=Product.order("name desc").limit(30)
product_30.each do |product|
puts "name: #{product.name},stock is: #{product.stock_quantity}"

end

# Knowing there is a one to many relationship between categories and products:

#     Find a Category object using the Category class and build/persist an associated Product.
puts Product.where("name like'name_assc%'").size
cat_first=Category.first
product_asso=cat_first.products.build
product_asso.name="name_assc6"
product_asso.description="desc_name_assc1"
product_asso.price=11
	
product_asso.save
puts Product.where("name like'name_assc%'").size
puts product_asso.inspect
product_asso.destroy
puts Product.where("name like'name_assc%'").size

#     Find a specific Category and then list all products associated with that category.

#cat_first=Category.first
 cat_first.products.each do |product|
puts "name is #{product.name} in category #{product.category.name}"
 	end