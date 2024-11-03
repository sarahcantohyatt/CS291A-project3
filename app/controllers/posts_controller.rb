class PostsController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @posts = Post.all
    @posts = @posts.order('created_at DESC')
  end
  
  def show
    if (@post = Post.find_by_id(params[:id])).present?
      render :show
    else
      content_not_found
    end
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @author = User.find_by_id(session[:user_id])
    @post = @author.posts.create(post_params)
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @post = Post.find(params[:id])
    unless @current_user.id == @post.user_id
      redirect_to post_path(@post)
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    if @current_user.id != @post.user_id
      redirect_to post_path(@post)
    else 
      @post.destroy
      redirect_to root_path, status: :see_other
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
