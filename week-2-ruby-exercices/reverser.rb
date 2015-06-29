# #Exercicio resolvido por mim
# class Reverser
#     def initialize(data)
#         @data = data
#     end
#     def reverse
#         if @data.class == String
#             @data.reverse
#         elsif @data.class == Fixnum
#             @data.to_s.reverse.to_i
#         else
#             @data
#         end
#     end
# end
#
# reverser = Reverser.new([1, 2])
# p reverser.reverse

# Solução resolvida na aula
class Reverser
    def initialize(data)
        @data = data
    end
    def reverse
        if @data.is_a?(String)
            @data.reverse
        elsif @data.is_a?(Fixnum)
            @data.to_s.reverse.to_i
        else
            @data
        end
    end
end

reverser = Reverser.new("Hello")
p reverser.reverse
