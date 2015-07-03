# class Stack
#     def initialize
#         @numbers = []
#     end
#     def push(number)
#         @numbers.push(number)
#         # @numbers << (number)
#     end
#     def pop
#         @numbers.pop
#     end
# end
#
# stack = Stack.new
# p stack.push(2)
# p stack.push(3)
# p stack.pop # => 3
# p stack.pop # => 2
# p stack.pop # => nil

class Queue
    def initialize
        @numbers = []
    end
    def enqueue(number)
        # @numbers.unshift(number)
        # @numbers << (number)
        @numbers.push(number)
    end
    def dequeue
        @numbers.delete_at(0)
    end
end

queue = Queue.new
p queue.enqueue(2)
p queue.enqueue(3)
p queue.dequeue # => 2
p queue.dequeue # => 3
p queue.dequeue # => nil
