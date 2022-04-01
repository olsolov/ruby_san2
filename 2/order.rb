require_relative 'item_container'

class Order
  attr_reader :items

  include ItemContainer::Manager
  include ItemContainer::Info  

  def initialize
    @items = []
  end

  def notification
    # send message for user
  end
end
