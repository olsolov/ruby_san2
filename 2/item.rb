class Item
  attr_accessor :price, :name

  @@discount = 0.1

  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  def info
    if block_given?
      yield price
      yield name
    else
      puts 'Nothing to show'
    end
  end

  def self.discount
    if Time.now.month == 3
      @@discount += 0.3
    else
      @@discount
    end
  end

  def price
    @price - @price * self.class.discount
  end

end
