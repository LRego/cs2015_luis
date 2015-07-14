# get "/" do
#     @contacts = Contact.all
#     if params[:sort] == 'descend'
#         @contacts = Contact.order('first_name DESC')
#     elsif params[:sort] == "ascend"
#         @contacts = Contact.order('first_name ASC')
#     end
#     erb :index
# end

get "/" do
    @contacts = Contact.all
    if params[:order] == 'descend'
        @contacts = Contact.order(params[:sort].to_sym => 'DESC')
    elsif params[:order] == "ascend"
        @contacts = Contact.order(params[:sort].to_sym => 'ASC')
    end
    erb :index
end

post "/new" do
    contact = Contact.new ({:first_name => params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], address: params[:address]})
    contact.save
    redirect "/"
end

get '/edit/:id' do
    @contact = Contact.find do |contact|
        contact.id == params[:id].to_i
    end
    erb :edit
end

post '/update/:id' do
    Contact.update(params[:id], {first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], address: params[:address]})
    redirect "/"
end

get '/remove/:id' do
    Contact.destroy(params[:id])
    redirect '/'
end
