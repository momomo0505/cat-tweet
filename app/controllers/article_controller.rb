class ArticleController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  private

  def fail_params
    params.require(:fail).permit(:title, :story, :learning, :image).merge(user_id: current_user.id)
  end

end
