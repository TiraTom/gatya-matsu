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
      redirect_to action: "index"
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    activity = Activity.find(params[:id])
    if activity.valid?
      if activity.update(activity_params)
        flash[:notice] ="更新が完了しました"
      else
        flash[:alert] = "更新に失敗しました。管理者に連絡してください"
      end
      redirecto_to action: "index"
    end
  end

  private
  def activity_params
    params.require(:activity)
          .permit(:activity_name, :activity_level, :activity_price, :activity_time)
  end

end
