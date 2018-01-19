require 'unirest'

system "clear"

puts "Welcome to my Products App."
puts "Make a selection"
puts "     [1] See all products  
puts "     [2] See one product 
puts "     [3] Create a new product 
puts "     [4] Update a product 


response = Unirest.get('http://localhost:3000/products')
data = response.body

puts JSON.pretty_generate(data)