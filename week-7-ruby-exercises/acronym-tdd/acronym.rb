def make_acronym(string)

    return "Not a string" unless string.is_a?(String)
    return "Not letters" if string.count("a-zA-Z ") != string.size

    string.split.map do |word|
      word[0].upcase
    end.join
end
