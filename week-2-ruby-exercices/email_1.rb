# #Exercicio de email
# class Email
#     def initialize(date, from, subject)
#         @date = date
#         @from = from
#         @subject = subject
#     end
#     def date
#         @date
#     end
#     def from
#         @from
#     end
#     def subject
#         @subject
#     end
#
# end
#
# email = Email.new("Homework this week", "2014-12-01", "Ferdous")
#
# puts "Date: #{email.date}"
# puts "From: #{email.from}"
# puts "Subject: #{email.subject}"

## Solução da aula
class Email
    attr_reader :date, :from, :subject

    def initialize(subject, date, from)
        @subject = subject
        @date = date
        @from = from
    end
end

email = Email.new("Homework this week", "2014-12-01", "Ferdous")

puts "Date: #{email.date}"
puts "From: #{email.from}"
puts "Subject: #{email.subject}"

##Versão Aldabrada
# class Email
#     def initialize
#         @data = ["Subject: Homework this week", "Date: 2014-12-01", "From: Ferdous"]
#     end
#     def date
#         @data
#     end
#     # def from
#     #     @from
#     # end
#     # def subject
#     #     @subject
#     # end
#
# end
#
# email = Email.new
#
# puts email.date
