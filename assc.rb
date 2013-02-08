load 'ar.rb'

alberta=Province.where(:name=>'Alberta').first

puts alberta.customers.count


new_albertan=alberta.customers.build
puts new_albertan.inspect