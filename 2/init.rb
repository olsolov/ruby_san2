# Dir['*.rb'].each { |file| require_relative file unless file == 'init.rb' }

# Dir['*.rb'].each do |file|
#  require_relative file unless file == 'init.rb'
#  puts file.to_s
# end
require_relative 'store_application'

StoreApplication.new
StoreApplication.new
StoreApplication.new

@items = []
@items << VirtualItem.new('virt', price: 240.0, weight: 290)
@items << AntiqueItem.new('ant', price: 240.0, weight: 290)
@items << RealItem.new(name: 'car', price: 240.0, weight: 290)
@items << RealItem.new(name: 'bike', price: 240.0, weight: 290)

cart = Cart.new('amg')

cart.add_item(RealItem.new({
                price: 250.0,
                weight: 310,
                name: 'car'
              }))

cart.add_item(RealItem.new({
                price: 250.0,
                weight: 310,
                name: 'bike'
              }))

cart.add_item(RealItem.new({
                price: 250.0,
                weight: 310,
                name: 'cycle'
              }))

p cart.send :all_cars
