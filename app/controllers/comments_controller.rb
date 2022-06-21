class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comment.create((params[:comment]).permit(:name, :comment))

    redirect_to post_path
  end

  def destroy
  end
end
