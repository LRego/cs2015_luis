class Ghost
    def initialize
        @color_name = ["White", "Yellow", "Purple", "Red"].sample
    end
    def color
        @color_name
    end
end

ghost = Ghost.new
puts ghost.color
puts ghost.color
puts ghost.color
