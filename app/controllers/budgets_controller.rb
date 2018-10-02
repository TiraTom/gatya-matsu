class BudgetsController < ApplicationController
  def index
    byebug
    @budgets = Budget.where(user_id: current_user.id)
  end

  def new
    @budget = Budget.new
  end

  def create
    byebug
    budget = Budget.new(budget_params)
    budget.user_id = current_user.id
    byebug
    if budget.valid?
      if budget.save
        flash[:notice] = "登録が完了しました"
      else
        flash[:alert] = "登録に失敗しました。管理者に連絡してください"
      end
      redirect_to action: "index"
    end
  end

  private
  def budget_params
    params.require(:budget).permit(:target_year, :budget)
  end


end
