class Item

  attr_accessor :price, :weight, :name

  def initialize(options = {})
    @price = options[:price]
    @weight = options[:weight]
    @name = options[:name]
  end

  def info
    if block_given?
      yield price
      yield weight
      yield name
    else
      puts 'Nothing to show'
    end
  end

end
