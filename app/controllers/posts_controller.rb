class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      render :show
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.user == current_user
      post.destroy
    end
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :area_id, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
