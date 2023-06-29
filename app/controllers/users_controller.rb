class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
     if @user == current_user
      Message.where(recipient_id: current_user.id, read: false).update_all(read: true)
     end
    @user_fails = @user.fails.order(created_at: :desc)
    @received_messages = Message.where(recipient_id: @user.id).order(created_at: :desc).limit(5)
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
