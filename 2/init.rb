#Dir['*.rb'].each { |file| require_relative file unless file == 'init.rb' }

#Dir['*.rb'].each do |file|
#  require_relative file unless file == 'init.rb'
#  puts file.to_s
#end

require_relative 'item'
require_relative 'cart'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'

@items = []
@items << VirtualItem.new({ price: 202.0, weight: 300, name: 'car' })
@items << RealItem.new({ price: 202.0, weight: 300, name: 'cycle' })
@items << RealItem.new({ price: 202.0, weight: 300, name: 'bike' })
