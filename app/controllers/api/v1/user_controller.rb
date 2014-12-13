
class API::V1::UserController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.json { render :json => @users }
    end
  end

  def create
    @user = User.new(user_params)
    @user.save!
    respond_to do |format|
      format.json { render :json => @user }
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :age, :current_city, :profile_pic_url)
  end
end