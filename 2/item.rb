class Item

  attr_accessor :price, :name

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

end
