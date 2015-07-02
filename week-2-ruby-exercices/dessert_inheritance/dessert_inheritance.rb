# class Dessert
#     # => attr_reader automatically creates methods :name and :calories
#     attr_reader :name, :calories
#     def initialize(name, calories)
#         @name = name
#         @calories = calories
#     end
#     def healthy
#         if calories > 200
#             ""
#
#         end
#     end
#     def delicious
#
#     end
# end
#
# class JellyBean < Dessert
#     def initialize()
#
#     end
#
# end

class Dessert
    attr_reader :name, :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    def healthy?
        # => if @calories < calories
        # =>    true
        # => else
        # =>    false
        # => end
        @calories < 200
    end
    def delicious?
        true
    end
end

class JellyBean < Dessert
    attr_reader :flavor
    def initialize(name, calories, flavor)
        super(name, calories)
        @flavor = flavor
    end
    def delicious?
        # => if @flavor == "black licorice"
        # =>    false
        # => else
        # =>    true
        # => end
        @flavor != "black licorice"
    end
end

# dessert = JellyBean.new("kdjdkj", 200, "black licorice")
# dessert = JellyBean.new("kdjdkj", 100, "black licoricesss")
# puts dessert.healthy?
# puts dessert.delicious?
#rspec dessert
