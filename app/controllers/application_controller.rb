class ApplicationController < ActionController::Base
  before_action :authenticate_user!,except: [:index, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :initialize_search

  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile])
  end

  def initialize_search
    @q = Fail.ransack(params[:q])
  end
end
