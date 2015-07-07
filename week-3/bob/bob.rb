require 'sinatra'

def bob(sentence)
    if sentence.empty?
        "Fine. Be that way!"
    elsif sentence == sentence.upcase && sentence != sentence.downcase
        "Whoah, chill out."
    elsif sentence.end_with?("?")
        "Sure"
    else
        "Whatever"
    end
end

# get '/' do
#     erb :form
# end

get '/' do
    if params.key?('name')
        @bob_response = bob(params[:name])
    end
    erb :bob
end


# usar o def fica bob(params[:name]) se for pela class Bob.new.bob['message']
