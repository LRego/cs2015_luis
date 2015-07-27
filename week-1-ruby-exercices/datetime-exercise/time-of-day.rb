# A minha solução #
require 'date'

hour = DateTime.now.hour

def time_of_day(hour)
    if hour > 6 && hour <=12
        puts "Morning"
    elsif hour > 12 && hour <= 18
        puts "Afternoon"
    elsif hour > 18 && hour <= 24
        puts "Evening"
    elsif hour > 0 && hour <= 6
        puts "Night"
    end
end

# time_of_day(17)

time_of_day(gets.chomp.to_i) #=> Passa o string para um numero inteiro


# Solução da Aula #

require 'date'

hour = DateTime.now.hour

def time_of_day(my_hour)
    if my_hour >= 6 && my_hour < 12
        "Morning"
    elsif my_hour >= 12 && my_hour < 18
        "Afternoon"
    elsif my_hour >= 18 && my_hour < 24
        "Evening"
    else
        "Night"
    end
end

puts time_of_day(hour)

# puts "Hour is #{time_of_day(hour)}"


# Solução com um método diferente #
require 'date'

hour = DateTime.now.hour

def time_of_day(my_hour)
    if my_hour.between?(6,12)
        "Morning"
    elsif my_hour.between?(13,18)
        "Afternoon"
    elsif my_hour.between?(19,24)
        "Evening"
    else
        "Night"
    end
end
