class ArticleController < ApplicationController
  def index
    @fail = Fail.includes(:user)
  end

  def new
    @fail = Fail.new
    puts @fail.inspect  # 追加
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
    params.require(:fail).permit(:title, :story, :learning, :image).merge(user_id: current_user.id)
  end

end
