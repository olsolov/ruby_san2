Dir["*.rb"].each { |file| require_relative file unless file == "init.rb" }

item1 = VirtualItem.new({price: 25, name: 'Car'})
item2 = RealItem.new({weight: 120, name: 'Car'})

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items

cart.delete_invalid_items

puts '______'

p cart.items

p item1.respond_to? :weight
p item2.respond_to? :weight
