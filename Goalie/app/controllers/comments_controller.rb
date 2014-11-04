class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    if @comment.commentable_type == "Goal"
      redirect_to goal_url(@comment.commentable_id)
    else
      redirect_to user_url(@comment.commentable_id)
    end
  end

  def comment_params
    params.require(:comment).permit(:body, :commentable_type, :commentable_id)
  end
end
