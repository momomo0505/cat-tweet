class CommentsController < ApplicationController


  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to fail_path(@comment.fail) 
    else
      @fail = @comment.fail
      @comments = @fail.comments
      render "fails/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, fail_id: params[:fail_id])
  end

end
