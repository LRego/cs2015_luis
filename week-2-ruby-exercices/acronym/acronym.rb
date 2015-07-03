#
# def makeAcronym(sentence)
#     if sentence.is_a?(String)
#         # sentence.split.map do |word|
#         #     word[0].upcase
#         # end.join
#         array = sentence.split.map do |word|
#             word[0].upcase
#         end
#         array.join
#     else
#         "Not a String"
#     end
#
#     # if condition
#     #
#     # end
# end

def makeAcronym(sentence)
    return "Not a string" unless sentence.is_a?(String)
    array = sentence.split.map do |word|
        word[0].upcase
    end
    array.join
end

# def makeAcronym(sentence)
#     return "Not a string" unless sentence.is_a?(String)
#     sentence.split.map do |word|
#         word[0].upcase
#     end.join
# end

p makeAcronym("kslks jfyj")
p makeAcronym(3)
p makeAcronym("Hello codewarrior")
p makeAcronym("a42")
p makeAcronym("42")
p makeAcronym([2,12])

# 'Hello codewarrior' -> 'HC'
#
# 'a42' -> 'Not letters'
#
# 42 -> 'Not a string'
#
# [2,12] -> 'Not a string'
#
# {name: 'Abraham'} -> 'Not a string'
