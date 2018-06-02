class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.new(activity_params)
    if activity.valid?
      if activity.save
        flash[:notice] = "登録が完了しました"
      else
        flash[:alert] = "登録に失敗しました。管理者に連絡してください"
      end
    end
  end

  private
  def activity_params
    params.require(:activity)
          .permit(:activity_name, :activity_level, :activity_price, :activity_time)
  end

end
