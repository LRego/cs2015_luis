require 'sinatra'
require 'date'
require 'time'

class Party
    attr_reader :id, :name, :description, :date_time
    def initialize(id, name, description, date_time)
        @id = id
        @name = name
        @description = description
        @date_time = date_time
    end

    def edit_party(name, description, date_time)
        @name = name
        @description = description
        @date_time = date_time
    end
    # def find_max(id_max)
    #     @id_max = parties.max_by do |party|
    #         party.id
    #     end
    # end
end

parties = [
    Party.new(0 ,"Party 1", "bla bla", DateTime.new(2016, 2, 3, 4, 5, 6)),
    Party.new(1, "Party 2", "cccccc", DateTime.new(2013, 2, 3, 4, 5, 6)),
    Party.new(3, "Party 3", "ddddddddd", DateTime.new(2000, 2, 3, 4, 5, 6)),
    Party.new(4, "Party 4", "dddddddddssssss", DateTime.new(2017, 2, 3, 4, 5, 6))
]

# list of all parties
get '/' do
    @parties = parties.sort_by do |party|
        party.date_time
    end
    @parties = parties.reject do |party| #para não aparecer no search reject! as parties que já passaram.
        party.date_time < DateTime.now
    end
    if params.key?('search') && params[:search] != ""
        @parties = parties.select do |party|
            party.name.downcase.include?(params[:search].downcase) || party.description.downcase.include?(params[:search].downcase)
        end
    end
    if params[:sort] == 'descend'
        @parties = @parties.reverse
    end
    erb :index
end

# form to create a new party
get '/new' do
    erb :create_party
end

# show individual post
get '/:id' do
    @party = parties.find do |party|
        party.id == params[:id].to_i
    end
    erb :party_description
end

# form to edit a single party
get '/:id/edit' do
    @party = parties.find do |party|
        party.id == params[:id].to_i
    end
    erb :edit_party
end

# method to save a new party, the /new route should point here
post '/create' do
    party = parties.max_by do |party|
        party.id
    end
    party = Party.new(party.id + 1, params[:name], params[:description], params[:date_time])
    parties << party
    redirect "/#{party.id}"
end

# method to update an existing party, the /:id/edit should point here
post '/:id/update' do
    party = parties.find do |party|
        party.id == params[:id].to_i
    end
    party.edit_party(params[:name], params[:description], params[:date_time])
    redirect "/#{party.id}"
end
