class PostsController < ApplicationController
  before_action :all_posts, only: [:index, :create, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

 
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    
    @post = Post.create(post_params)

  
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post.update(post_params)
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    
  end

  private
  
  
    def all_posts
      @posts = Post.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :image)
    end
end
