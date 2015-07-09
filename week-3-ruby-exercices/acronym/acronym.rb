require 'rubygems'
require 'sinatra'

def makeAcronym(sentence)
    return "Not a string" unless sentence.is_a?(String)
    array = sentence.split.map do |word|
        word[0].upcase
    end
    array.join
end

get '/' do
    if params.key?('name')
        @text = makeAcronym(params[:name])
    end
    erb :index
end
