# upper = ['jo', 'nelson', 'jurie']
#
#     upper = upper.map(&:upcase)
#
#     array_line_list = upper.join "'; '"
#     # puts "#{array_line_list}"
#
# puts "[#{array_line_list}]"

# Outra Solução
# new_array = []
#
# array_each do |item|
#     new_array << item.upcase
#
# end

#Outra Solução

list = ['jo', 'nelson', 'jurie']

new_list = list.map do |item|
    item.capitalize
end

p new_list
