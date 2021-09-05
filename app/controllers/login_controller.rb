class LoginController < ApplicationController
    def show
        @user = User.find_by(email:params[:email])
    end

    def create
        @user = User.find_by(email:params[:email])
    end

    private
  def user_params
    params.require(:user).permit(:name,:email)
  end

end
