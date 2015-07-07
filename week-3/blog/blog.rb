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
  Post.new("0", "Topic 1", "Bla bla bla bla", "Luis Rego", "6 Julho"),
  Post.new("1", "Topic 2", "Bla bla bla bla bla bla bla", "Luis Rego", "7 Julho")
]


# class Comment criar os comentários
#
#
# end

get '/' do
  @posts = posts
  erb :index
end

get '/show/:id' do
    @post = posts.find do |post| # => passas o array posts para um array post e procuras pelo id
      post.id == params[:id].to_s # => passa o id no link
    # @post = post.find { |post| post.id == params[:id].to_s  }
    end

    # @comments = comennts.select do |comment|
    #     comment.post.id == params[:id]

    erb :show
end
