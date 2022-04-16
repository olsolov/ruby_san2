# Dir['*.rb'].each { |file| require_relative file unless file == 'init.rb' }

# Dir['*.rb'].each do |file|
#  require_relative file unless file == 'init.rb'
#  puts file.to_s
# end

require_relative 'item'
require_relative 'cart'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'string'
require_relative 'antique_item'

@items = []
@items << VirtualItem.new({
                         price: 240.0,
                         weight: 290,
                         name: 'virt'
                       })

@items << AntiqueItem.new({
                         price: 270.0,
                         weight: 300,
                         name: 'ant'
                       })

@items << RealItem.new({
                         price: 250.0,
                         weight: 310,
                         name: 'cycle'
                       })

@items << RealItem.new({
                        price: 250.0,
                        weight: 310,
                        name: 'bike'
                      })

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

p cart.all_cars
p cart.all_bikes
