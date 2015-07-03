# #Is the number prime?
# #Is the number ever?
# #Is the number a mutiple of 10?
#
# require "prime"
#
#
# def numbers(number)
#     a = []
#     # => number is prime
#     if Prime.prime?(number)
#         a << true
#     else
#         a << false
#     end
#     # => number is even
#     if number.even?
#         a << true
#     else
#         a << false
#     end
#     # => Number multiple of 10
#     if (number / 10) =
#
#     end
#
# end
#
# # puts numbers(4)
#
# puts numbers(4)

require 'prime'

def number_property(num)
    [num.prime? && num>0]

end
