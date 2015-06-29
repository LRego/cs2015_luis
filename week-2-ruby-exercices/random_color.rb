# # Exercicio da Aula
# class Ghost
#     def color
#         color_name = ["White", "Yellow", "Purple", "Red"]
#         color_name[rand(4)]
#     end
# end
#
# ghost = Ghost.new
# puts ghost.color

#Exercicio Resolvido pela Aula
class Ghost
    def color
        ["White", "Yellow", "Purple", "Red"].sample
    end
end

ghost = Ghost.new
puts ghost.color
