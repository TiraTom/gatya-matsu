module RootsHelper
  def gatya
    budget_remain = Budget.where(user_id: current_user.id).remain
    

  end
end
