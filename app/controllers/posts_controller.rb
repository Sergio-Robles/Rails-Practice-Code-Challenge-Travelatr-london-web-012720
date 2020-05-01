class PostsController < ApplicationController

    def index 
        @posts = Post.all
    end

    def show 
        @post = Post.find(params[:id])
    end

    def new 
        @post = Post.new
    end

    def edit 
        @post = Post.find(params[:id])
    end

    def create 
        @post = Post.new(post_params(:title, :content, :likes))
    end


    private 

    def post_params(*args)
        params.require(:post).permit(*args)
    end

end
