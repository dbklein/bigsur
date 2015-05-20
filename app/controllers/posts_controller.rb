class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update]

  def index
    @posts = Post.all
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  # def edit
  # end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post

  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
