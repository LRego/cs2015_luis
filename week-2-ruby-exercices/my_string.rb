class MyString
    def initialize(value)
        @string = value
    end
    def size
        puts "@string class: #{@string.class}"
        @string.size
    end
end

str = MyString.new("hello")
puts "str class: #{str.class}"
str.size
