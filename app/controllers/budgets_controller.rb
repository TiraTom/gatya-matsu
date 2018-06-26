class BudgetsController < ApplicationController
  def index
#    @budgets = Budget.joins(:users).merge(User.(curent_user.id))
  end

  def new
    @budget = Budget.new
  end

  def create
    budget = Budget.new(get_params)
    if budget.valid?
      if budget.save
        flash[:notice] = "登録成功"
      else
        flash[:alert] = "登録失敗"
      end
    end
  end

  private
  def get_params
    params.require(:budget),permit(:target_year, :budget)
  end


end
