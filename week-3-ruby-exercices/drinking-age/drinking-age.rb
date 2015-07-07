require 'sinatra'

# age = ARGV[0] # => We don't need to use ARGV because we only use it to print things for the user.

def drink(age)
    if age.empty?
        "No drinking age input"
    elsif age.to_i < 18 # => comparação de uma string com array
        "Not allowed to drink" # => we don't need to use puts because we don't need to print, the HTML will do the print
    else
        "Allowed to drink" # => we don't need to use puts because we don't need to print, the HTML will do the print
    end
end

# puts drink(age.to_i) = > we don't need because we are asking input from the user.

get '/' do
    erb :index
end

get '/drinking_age' do
    if params.key?('age')
        @drinking_reponse = drink(params[:age])
    end
    erb :drinking_age
end

# solução da aula
require 'sinatra'

def can_drink?(age)
    if age >= 18
        "Allowed to drink"
    else
        "Not allowed to drink"
    end
end

get '/' do
    erb :form
end

get '/answer' do
    @message = can_drink(params[:age].to_i)
end
