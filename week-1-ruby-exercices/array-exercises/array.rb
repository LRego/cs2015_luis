array = [1, 2, 3, 4, 5, 6]

## Head - Devolve o primeiro número do Array
def head(numbers)
    numbers.first
end

puts head(array)

##############

## Tail - Devolve todos os número menos o primeiro
# def tail(numbers)
#     numbers[1..5]
# end

# def tail(numbers)
#     numbers[1..-1]
# end
#
# puts tail(array)

def tail(numbers)
    numbers.drop(1)
end

puts tail(array)

##############

## Init - Devolve todos os números menos o último
# def init(numbers)
#     numbers[0..4]
# end

def init(numbers)
    numbers.take(numbers.size - 1)
end

puts init(array)

##############

## Last - Devolve o último número do Array
def last(numbers)
    numbers.last
end

puts last(array)
