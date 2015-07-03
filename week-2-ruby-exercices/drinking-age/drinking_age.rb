age = ARGV[0] # => comparação de uma string com array

def drink(age)
    if ARGV.empty?
        "Error"
    elsif age.to_i < 18 # => comparação de uma string com array
        puts "Not allowed to drink"
    else
        puts "Allowed to drink"
    end
end

puts drink(age.to_i)

# =>  Outra Solução
# result  =   if ARGV.empty?
#                 "Error"
#             elsif age.to_i < 18
#                 puts "Not allowed to drink"
#             else
#                 puts "Allowed to drink"
#             end
#
# puts result

# => Outra Solução
# result  =   if age == nil
#                 "Error"
#             elsif age.to_i < 18
#                 puts "Not allowed to drink"
#             else
#                 puts "Allowed to drink"
#             end
# puts result
