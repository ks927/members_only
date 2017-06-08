class PostsController < ApplicationController
    before_action :signed_in_user, only: [:new, :create]
    
  def new
      @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      @post.user_id = current_user.id
      if @post.save
          redirect_to posts_path
      else
          render :new
      end
  end

  def index
      @posts = Post.all
  end
    
    private
    
  def post_params
     params.require(:post).permit(:title, :body) 
  end
    
   def signed_in_user
       unless signed_in?
           flash[:danger] = "You must be a member to post!"
           redirect_to signin_url
       end
   end
    
end
