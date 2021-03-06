class PostsController < ApplicationController
  def index
      @posts = Post.all.order(created_at: :desc)
  end
  
  def show
      @post = Post.find(params[:id])
  end
  
  def create
      @post = Post.new(content: params[:content])
      @post.save
      redirect_to("/posts/index")
  end
  
end
