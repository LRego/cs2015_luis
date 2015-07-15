get "/" do


    @complete_todos = []
    @incomplete_todos = []

    todos = Todo.all
    todos.each do |todo|
        if todo.complete == true
            @complete_todos << todo
        else
            @incomplete_todos << todo
        end
    end
    # todos = Todo.all
    # @complete_todos = todos.select do |todo|
    #     todo.complete == true
    # end
    # @incomplete_todos = todos.select do |todo|
    #     todo.complete == false
    # end
    erb :index
end


post "/new" do
    # receber dados do form
    # criar todo o partir dos dados
    # gravar todo na DB
    # redirecionar para homepage
    todo = Todo.new(title: params[:title])
    todo.save
    redirect "/"
end

get '/remove/:id' do
    Todo.destroy(params[:id])
    redirect '/'
end

get '/todo/:id/toggle' do
    todo = Todo.find(params[:id])
    todo.complete = !todo.complete
    todo.save
    redirect '/'
end
