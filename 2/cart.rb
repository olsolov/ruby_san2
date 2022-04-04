require_relative 'item_container'

class Cart
  attr_reader :items
  attr_reader :owner
  include ItemContainer

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open(@owner.to_s + '_cart.txt', 'w') do |f|
      @items.each { |i| f.puts "#{i.name}:#{i.price}#{i.weight}}"}
    end
  end

  def read_from_file
    return unless File.exist? @owner.to_s + '_cart.txt'
    fields = File.readlines(@owner.to_s + '_cart.txt', 'w') #bike:300:300\n
    fields.map! { |i| i.chomp } #"bike:300:300"
    fields.map! { |i| i.split(":") } #["bike","300","300"]
    fields.each { |i| @items << RealItem.new(name:  i[0],
                                             price: i[1].to_i) }

    @items.uniq!
  end
end
