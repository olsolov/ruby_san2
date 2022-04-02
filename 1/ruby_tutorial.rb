class RubyTutorial
  def self.description
    a, b, c = 1, 2, 3
    d = a ? b : c

    for i in 0..5
      p i
    end

    for i in 0...5
      p i
    end
    p '_____'

    array = %w[sasha dasha pasha]
    array.map { |i| p i }
    array.map(&method(:puts))
    p '_____'

    p 1.class
    p "ruby".class
    p false.class
    p nil.class
    p '_____'

    p 1.to_f
    p 1.to_s
    p 1.to_i

    p '_____'
    p rand(1..10)
    p rand(1...10)
    p '_____'

    p 'SASHA'.downcase
    p 'sasha'.upcase
    p 'mo lo ko'.capitalize
    p '_____'

    array2 = %w[sasha masha]

    string = "sasha masha"
    p string.chars
    p '_____'

    p string.split(',')
    p '_____'

    array = %w[sasha dasha pasha]
    p array.find_index('pasha')
    p '_____'

    array = [1, 20, 3, 4]
    array.find_all { |num| p num.odd? unless num.nil? }
    p '_____'
    array.find_all { |num| p true }
    p '_____'
    array.find { |num| p num.even? }
    p '_____'
    array.map{ |str| p str.to_s.length }
    p '_____'

    hash = { car: 'audi', name: 'a8', engine: 'v12'}
    p hash.reverse_each.to_h
    p '_____'

    [["audi", "black", 2008], ["bmv", "red", 2014]].each do |car, color, year|
      puts "car: #{car}, color: #{color}, year: #{year}"
    end

    p hash.empty?
    p hash.size
    p hash.keys

    p hash.include? :car
    p hash.sort
  end
end

RubyTutorial.description
