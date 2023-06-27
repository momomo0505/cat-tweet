class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @received_messages = Message.where(recipient_id: @user.id).order(created_at: :desc)
  end

def edit
end

def update
if current_user.update(user_params)
  redirect_to user_path
else
  render :edit
end
end

private

def user_params
  params.require(:user).permit(:name, :email, :profile)
end

end
