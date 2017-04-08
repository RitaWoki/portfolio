class CommentsController < ApplicationController
  def index
      @comments = Comment.all
      end 

	def new
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new
    end

     def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)
      if @comment.save
        redirect_to post_path(@comment.post)
      else
        render :new
      end
    end

     def edit
      @post = Post.find(params[:id])
      @comment = Comment.find(params[:id])
    end

    def update
      @post = Post.find(params[:id])
      @comment = Comment.find(params[:id])
      if @comment.update(project_params)
        flash[:notice] = "Comment updated!"
        redirect_to posts_path(@comment.post)
      else
        render :edit
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      flash[:notice] = "Comment deleted"
      redirect_to posts_path
    end



  private
    def comment_params
      params.require(:project).permit(:description)
    end
end

