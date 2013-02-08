load 'ar.rb'



new_product = Product.new

# Set the required properties.

new_product.name  = "Product name 1"
new_product.description = " some desc for produc 1"
new_product.price  = 5
# Calling save on the object will persist it to the products table.

new_product.save




# Method Two: Create an product in "object space"

# This time we set the required properties as key/value arguments of the new method.

product2 = Product.new( :name  => "Product name 2",
                        :description => "desc for 2",
                      :price  => 4)


product2.save

# Method Three: Create the object and persist it all at once.



product3 = Product.create( :name  => "Product name 3",
                      :description => "desc for 3",
                      :price  => 3)



bad_product = Product.new( :name => "bad prodcut name") # Purposefully missing the city and email.

# Save will return false if any of our validations fail.
if (bad_product.save)
  puts "produt was saved to the database product table."
 
else
  puts "There was an error saving bad product to the database."
  # We can loop through all the validation errors.
  bad_product.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end
