class Vehicle
    def initialize(wheels)
        @wheels = wheels
    end
    def color
        "White"
    end
    def to_s
        "I have #{@wheels} wheels "
    end
end

class Car < Vehicle
    def initialize(wheels, engine)
        # @wheels = wheels
        super(wheels)
        @engine = engine
    end
    def to_s
        # =>  "I have #{@wheels} wheels, and a #{@engine}cc engine"
        super + ", and a #{@engine}cc engine"
    end
end

class Bicycle < Vehicle
    def initialize(wheels)
        super(wheels)
    end
end



# =>  vehicle = Vehicle.new(3)
# car = Car.new(3, 1500)
# puts car
# bicycle = Bicycle.new(3)
# puts bicycle.color
