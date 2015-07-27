# A minha solução #
# def bob(message)
#     if message.strip.empty? #>> espaços vazios
#         "Fine.Be that way!"
#     elsif message[-1] == "?"  #>> a última letra se tem ?
#         "Sure"
#     elsif message == message.upcase #>> Letra maiuscula
#         "Woah, Chill Out!"
#     else
#         "Whatever"
#     end
# end
#
# puts bob("DDDDD")

# Solução da Aula #

def bob(sentence)
    if sentence.empty?
        "Fine. Be that way!"
    elsif sentence == sentence.upcase && sentence != sentence.downcase
        "Whoah, chill out."
    elsif sentence.end_with?("?")
        "Sure"
    else
        "Whatever"
    end
end

# loop do >> SEM o puts Goodbye Person
#     print "> "
#     user_input = gets.chomp
#     if user_input == "Bye"
#         break
#     end
#     puts bob(user_input)
# end

loop do
    print "> "
    user_input = gets.chomp
    if user_input.downcase == "bye"
        puts "Goodbye Person"
        break
    end
    puts bob(user_input)
end




# user_input = get.chomp >> user input
# puts bob(user_input) >> user input
