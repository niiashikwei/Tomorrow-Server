
class API::V1::UserController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users }
    end
  end

  def create
    User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :profile_pic_url)
  end
end