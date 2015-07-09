require 'sinatra'

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
    Party.new(0 ,"Helo", "kksks","kdkdk"),
    Party.new(1, "Helo", "kddkdjdkjdk","kdkdk")
]

# list of all parties
get '/' do
    @parties = parties
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
