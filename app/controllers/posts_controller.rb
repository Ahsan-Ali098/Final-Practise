class PostsController < ApplicationController
  before_action :find_post, only: [:show, :update, :edit, :destroy]
  before_action :set_user , only: %i[index new create show destroy] 
  def index
    @posts = @user&.posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: 'show', id: @user.id
    else
      render 'new'
    end 
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def edit
  end
  
  def destroy
    @post.destroy
    redirect_to user_posts_path(@user)
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end  

  def set_user
    return unless params[:user_id].present?

    @user = User.find(params[:user_id])
  end

end
