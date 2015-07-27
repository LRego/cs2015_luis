#
# def say_my_name
#     "Luis"
# end
#
# puts say_my_name

# def sum(a,b)
#     a + b
# end
#
# puts sum(2,2)

# def say_hello(name)
#     text = "Hello "
#     text = text + name
# end
#
# puts say_hello("luis")


# def allowed_to_drink(age)
#     if age >= 18
#         "Allowed to drink"
#     else
#         "Not allowed to drink"
#     end
# end
#
# puts allowed_to_drink(20)

def allowed_to_drink(age)
    if age >= 18
        "Allowed to drink"
    else
        "Not allowed to drink"
    end
end

puts "How old are you?"
age = gets.chomp.to_i

puts allowed_to_drink(20)
