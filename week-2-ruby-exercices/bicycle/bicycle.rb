class Bicycle
  attr_reader :gears, :wheels, :seats

  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end
end

class Tandem < Bicycle
  def initialize(gears) # => Tá a chamar o gears do Pai(wheels, gears, seats)
    super(gears)
    @seats = 2 # => O Pai não interfere
  end
end

def quizz
  answers = []

  b = Bicycle.new
  t = Tandem.new(4)

  # => : replace "?" by the correct fixnum !

  answers << (b.gears == 1)
  answers << (b.wheels == 2)
  answers << (b.seats == 1)

  answers << (t.gears == 4)
  answers << (t.wheels == 2)
  answers << (t.seats == 2)

  answers.reduce(true) do |result, answer|
    result && answer
  end
end

puts quizz
