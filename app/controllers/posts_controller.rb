class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.comments_for_post(@post.id)
    @replies = Comment.replies_for_post(@post.id)
  end

  def new 
    @topics = Topic.all()
  end


  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/posts/' + @post.id.to_s
    else  
      @topics = Topic.all()
      render 'new'
    end
  end
end
