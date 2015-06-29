#First exercise POO
class Car
    def start_engine
        "Engine has started"
    end
    def shift_gear(gear)
        "Car now in gear #{gear}"
    end
    def to_s
        "This is a car"
    end
end

my_car = Car.new
puts my_car.start_engine
puts my_car.shift_gear(3)
