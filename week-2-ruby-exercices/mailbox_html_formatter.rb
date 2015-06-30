class Email
    def initialize(subject, headers)
        @subject = subject
        @date = headers[:date]
        @from = headers[:from]
    end
    def date
        @date
    end
    def from
        @from
    end
    def subject
        @subject
    end
end

class Mailbox
    def initialize(name, data)
        @name = name
        @data = data
    end
    def name
        @name
    end
    def emails
        @data
    end
end
# Resolução do exercicio
# class MailboxHtmlFormatter
#     def initialize(mailbox)
#         @mailbox = mailbox
#     end
#     def format
#         html = "<html>
#   <head>
#     <style>
#       table {
#         border-collapse: collapse;
#       }
#       td, th {
#         border: 1px solid black;
#         padding: 1em;
#       }
#     </style>
#   </head>
#   <body>
#     <h1>#{@mailbox.name}</h1>
#     <table>
#       <thead>
#         <tr>
#           <th>Date</th>
#           <th>From</th>
#           <th>Subject</th>
#         </tr>
#       </thead>
#       <tbody>"
#         @mailbox.emails.each do |email|
#             html = html + "<tr>
#                     <td>#{email.date}</td>
#                     <td>#{email.from}</td>
#                     <td>#{email.subject}</td>
#                 </tr>"
#             end
#           html = html + "
#       </tbody>
#     </table>
#   </body>
# </html>"
#     end
# end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

puts formatter.format
