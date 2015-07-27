# def no_odds(values)
#     even_numbers = []
#     values.each do |value|
#         if value.even?
#             even_numbers << value
#         end
#     end
#     even_numbers
# end
#
#
# p no_odds([1,2,3,4,5,6,7,8,10])

def no_odds(values)
    values.select do |value|
        value.even?
    end
end

p no_odds([1,2,3,4,5,6,7,8,10])
