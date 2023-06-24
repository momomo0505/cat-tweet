class FailsController < ApplicationController
  def index
    @fail = Fail.includes(:user)
  end

  def new
    @fail = Fail.new
  end

  def show
    @fail = Fail.find(params[:id])
    @comment = Comment.new
    @comments = @fail.comments.all.includes(:user)
  end

  def edit
    @fail = Fail.find(params[:id])
    unless @fail.user_id == current_user.id
      redirect_to action: :index
  end
end

  def update
    @fail = Fail.find(params[:id])
    if @fail.update(fail_params)
     redirect_to fail_path(@fail)
    else
     render :edit 
    end
  end

def destroy
    @fail = Fail.find(params[:id])
    @fail.destroy
    redirect_to root_path
end

  def create
    @fail = Fail.new(fail_params)
    if @fail.save
      redirect_to root_path(@fail)
    else
      render :new
    end
  end

  private

  def fail_params
    params.require(:fail).permit(:title, :story, :image).merge(user_id: current_user.id)
  end

end