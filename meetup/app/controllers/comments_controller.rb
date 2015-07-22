class CommentsController < ApplicationController
  def create
    c = Comment.new(comment_params)
    c.save
    respond_to do |format|
      format.js
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:issue_id, :user_id, :content)
  end
end
