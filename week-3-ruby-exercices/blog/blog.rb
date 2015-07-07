require 'sinatra'

class Post
    attr_reader :id, :title, :body, :author, :created_at
    def initialize(id, title, body, author, created_at)
        @id = id
        @title = title
        @body = body
        @author = author
        @created_at = created_at
    end

end

posts = [
  Post.new(0, "Topic 1", "Bla bla bla bla", "Luis Rego", "6 Julho"),
  Post.new(1, "Topic 2", "Bla bla bla bla bla bla bla", "Luis Rego", "7 Julho")
]


class Comment
    attr_reader :id, :body, :author, :post_id
    def initialize(id, body, author, post_id)
        @id = id
        @body = body
        @author = author
        @post_id = post_id
    end

end


comments = [
  Comment.new(0, 'I really like this post', 'Gabriel', 0),
  Comment.new(1, 'I really like this postdddjjdjd', 'Gabriel', 1)
]


get '/' do
  @posts = posts
  erb :index
end

get '/show/:id' do
    @post = posts.find do |post| # => passas o array posts para um array post e procuras pelo id
      post.id == params[:id].to_i # => passa o id no link
    end
    @comments = comments.select do |comment|
        comment.post_id == @post.id
    end
    erb :show
end

post '/show/:id/comment' do

end
