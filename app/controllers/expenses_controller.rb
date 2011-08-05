class ExpensesController < InheritedResources::Base
  actions :new, :create
  
  def create
    @expense = current_user.expenses.create(params[:expense])
    redirect_to user_path(current_user)
  end
  
  protected
  def begin_of_association_chain
      @current_user    
  end
end
