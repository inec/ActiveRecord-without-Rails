load 'ar.rb'

# DELETING ROWS WITH ACTIVE RECORD

# Let's find a customer in our customers table.
#
# You will need to run the active_record_create.rb script
# first, otherwise this customer will not exist.

product_to_delete = Product.where(:name => 'Product name 3').first

# In the above statement we have to call .first to get a single
# customer object. Without the .first we will get a collection
# of objects. In this case it will likely be a collection of
# size 1.

puts product_to_delete.inspect

# Deleting the customer is as simple as calling .destroy

product_to_delete.destroy  unless product_to_delete.nil?

puts product_to_delete.inspect

# DANGER! The following commented command would delete *all* customers
# from the customers table.

# Customer.destroy_all