class PostsController < ApplicationController
    
    def index
      @posts = Post.all.order('created_at DESC')
    end

    def create
        @post = current_user.posts.create(post_params)
        if @post.valid?
          redirect_to root_path
        else
          render :new, status: :unprocessable_entity
        end
    end

    def new
      @post = Post.new
    end

    def show
      @post = Post.find(params[:id])
    end


    private
    def post_params
        params.require(:post).permit(:photo, :description, :title)
    end
    
end
