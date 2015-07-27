get "/" do
    @posts = Post.all
    erb :index
end

get "/posts" do
    @posts = Post.all
    erb :"posts/index"
end

get "/posts/new" do
    erb :"posts/create"
end

get "/posts/:id" do
    @post = Post.find do |post|
        post.id == params[:id].to_i
    end
    erb :"posts/view"
end

post "/posts/create" do
    post = Post.new(title: params[:title], body: params[:body])
    post.save
    redirect '/posts'
end



# GET /posts
# GET /posts/new
# GET /posts/:id/edit
# POST /posts/create
# POST /posts/:id/update
