# list = ["one", "two", "three"]
# ## A minha solução
 def html(values)
     puts "<ul>"
     values.each do |item|
         #puts "\t<li>" + item + "</li>"
         puts "\t<li>#{item}</li>"
     end
     puts "</ul>"
end

# # html(list)
# #
html(ARGV) #>> Guarda os valores num array
# #
#
#
# # ## Solução da Aula
# #
# # def html_list(items)
# #     p "<ul>"
# #     items.each do |item|
# #         p "<li>#{item}</li>"
# #     end
# #
# #     p "</ul>"
# # end
# #
# # html_list(list)
# ## Outra Solução
# def html_list(items)
#     text = "<ul>"
#
#     items.each do |item|
#         text << "<li>#{item}</li>"
#     end
#     text << "</ul>"
# end
#
# output = html_list(list)
#
# p output

##Solução com ARGV
# def html_list(items)
#     text = "<ul>"
#
#     items.each do |item|
#         text << "<li>#{item}</li>"
#     end
#     text << "</ul>"
# end
#
# output = html_list(ARGV)
#
# p output
