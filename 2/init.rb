Dir["*.rb"].each { |file| require_relative file unless file == "init.rb" }

item1 = VirtualItem.new({price: 202.0, weight: 120, name: 'Car'})
item2 = RealItem.new({price: 202.0, weight: 220, name: 'Cycle'})
item3 = RealItem.new({price: 90.0, weight: 320, name: 'Bike'})

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3

p cart
