
# def hashes
#     languages = {
#         :de => 'German',
#         :en => 'English',
#         :es => 'Spanish',
#     }
#
#     dictionary = {
#         :de => { :one => 'eins', :two => 'zwei', :three => 'drei'},
#         :en => { :one => 'one', :two => 'two', :three => 'three'},
#         :es => { :one => 'uno', :two => 'dos', :three => 'tres'},
#     }
#     dictionary.each do |lang, numbers|
#         if lang != :en
#             puts "In #{languages[lang]}, #{numbers[:one]} means one, #{numbers[:two]} means two, #{numbers[:three]} means three}"
#         end
#     end
# end
#
# hashes

def sentece_language(language)
    languages = {
        :de => 'German',
        :en => 'English',
        :es => 'Spanish',
    }

    dictionary = {
        :de => { :one => 'eins', :two => 'zwei', :three => 'drei'},
        :en => { :one => 'one', :two => 'two', :three => 'three'},
        :es => { :one => 'uno', :two => 'dos', :three => 'tres'},
    }
    # dictionary.each do |lang, numbers|
    #     if languages == :es
    #         puts "In #{languages[lang]}, #{numbers[:one]} means one, #{numbers[:two]} means two, #{numbers[:three]} means three}"
    #     end
    # end

    puts "In #{languages[language]}, #{dictionary[language][:one]}"
end

sentece_language(:de)
