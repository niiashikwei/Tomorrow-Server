
class API::V1::ActivityController < ApplicationController
  def index
    @activities = Activity.all
    respond_to do |format|
      format.json { render :json => @activities }
    end
  end

  def create
    Activity.create(activity_params)
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :min_team_size, :max_team_size)
  end
end
