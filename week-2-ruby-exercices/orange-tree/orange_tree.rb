class OrangeTree
    attr_reader :age, :height, :fruits
    def initialize
        @age = 0
        @height = 0
        @fruits = 0
    end
    # => if so, make the tree grow fruits
    def pick_a_fruit!
        # @fruit = fruits - 1
        @fruits -= 1
    end
    # => age the tree of one year
    def one_year_passes!
        @age += 1
        if @age <= 10
            # => @height = @height + 1 é a mesma coisa
            @height += 1
        end
        if @age.between?(6, 10)
            @fruits = 100
        elsif @age.between?(11, 15)
            @fruits = 200
        else
            @fruits = 0
        end
    end
    # => check if the tree has survived
    def dead?
        if @age >= 100
            true
        elsif @age.between?(51, 99)
            [true, false].sample
        else
            false
        end
    end
    # => if so, make the tree height grow
    # => if so, make the tree grow fruits
end

# tree = OrangeTree.new(0)
# 50.times do
#     tree.one_year_passes!
#     puts tree.height
# end
