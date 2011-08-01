class ExpensesController < InheritedResources::Base
  before_filter :which_user
  actions :new,:create
  
  def create
    @expense = @user.expenses.create(params[:expense])
    redirect_to user_path(@user)
  end
 
end
