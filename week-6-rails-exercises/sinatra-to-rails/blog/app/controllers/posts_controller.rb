class PostsController < ApplicationController
    before_action :require_login, except: [:index, :show]
    def index
        @posts = Post.all
    end
    def show
        @post = Post.find params[:id]
    end
    def new
        @post = Post.new
    end
    def create
        @post = Post.create(
            title: params[:post][:title],
            body: params[:post][:body]
        )
        redirect_to "/"
    end
    def edit
        @post = Post.find params[:id]
    end
    def update
        Post.update(
            params[:id],
            title: params[:post][:title],
            body: params[:post][:body]
        )
        redirect_to "/"
    end
    def destroy
        authorize! :destroy, Post
        Post.destroy(params[:id])
        redirect_to "/"
    end
end

# GET / posts#index
# posts GET /posts(.       :format) posts#index ok
# POST /posts(.            :format) posts#create ok
# new_post GET /posts/new(.:format) posts#new ok
# edit_post GET /posts/    :id/edit(.:format) posts#edit
# post GET /posts/         :id(.:format) posts#show ok
# PATCH /posts/            :id(.:format) posts#update
# PUT /posts/              :id(.:format) posts#update
# DELETE /posts/           :id(.:format) posts#destroy
