class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

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
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Post.find(params[:post_id]).comments.find(params[:id])
    end
end
