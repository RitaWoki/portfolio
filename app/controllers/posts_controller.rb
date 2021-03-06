class PostsController < ApplicationController
   def index
      @posts = Post.all
      end

    def show
      @post = Post.find(params[:id])
      render :show
      end

    def new
      @post = Post.new
      render :new
      end


    def create
      @post = Post.new(post_params)
      if @post.save
        redirect_to  posts_path
      else
        render :new
       end
      end


    def edit
      @post = Post.find(params[:id])
      render :edit
      end

    def update
      @post= Post.find(params[:id])
      if @post.update(post_params)
        redirect_to posts_path
      else
        render :edit
         end
       end

    def destroy
      @post = POst.find(params[:id])
      @post.destroy
      redirect_to posts_path
       end


    private
    def post_params
      params.require(:post).permit(:name, :author, :description)
     end
   end



