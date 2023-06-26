class LikesController < ApplicationController
  before_action :set_fail
  
  def create
    like = current_user.likes.build(fail_id: params[:fail_id])
    like.save
  end

  def destroy
    like = Like.find_by(fail_id: params[:fail_id], user_id: current_user.id)
    like.destroy
  end

  private

  def set_fail
    @fail = Fail.find(params[:fail_id])
  end

end 