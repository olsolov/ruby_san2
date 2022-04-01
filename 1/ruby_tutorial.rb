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
  end
end

RubyTutorial.description
