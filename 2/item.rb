class Item
  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

  attr_accessor :price, :weight

end

item1 = Item.new({weight: 20, price: 50})
item2 = Item.new({weight: 60, price: 30})

p item1
p item2
