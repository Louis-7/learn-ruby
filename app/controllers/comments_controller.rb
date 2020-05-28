class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]
    before_action :set_post

    # GET /posts  
    def index
        @comments = Post.find(params[:post_id]).comments
    end
     
    # GET /comments/1
    def show
    end

    def create
        @post.comments.create! comments_params
        redirect_to @post
    end

    private
    def set_post
        @post = Post.find(params[:post_id])
    end

    def comments_params
        params.required(:comment).permit(:body)
    end

    def set_comment
      @comment = Post.find(params[:post_id]).comments.find(params[:id])
    end
end
