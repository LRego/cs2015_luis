class OrangeTree
    attr_reader :age, :height
    def initialize(age)
        @age = 0
        @height = 0
    end
    # => age the tree of one year
    def one_year_passes!
        @age += 1
        if @age <= 10
            #   @height = @height + 1
            @height += 1
        end
    end
    # => check if the tree has survived
    def tree_dies
        
    end

    # => if so, make the tree height grow
    # => if so, make the tree grow fruits
end

tree = OrangeTree.new(0)
50.times do
    tree.one_year_passes!
    puts tree.height
end
