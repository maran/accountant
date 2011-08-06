class ExpensesController < InheritedResources::Base
  actions :new, :update
  
  def new
    @expense = Expense.new
    @category = Category.new
  end
  
  def create
    @expense = current_user.expenses.create(params[:expense])
    @category = Category.new(params[:category])
    @category.save
    @product = Product.new(:expense_id => @expense.id, :category_id => @category.id) 
    @product.save
    redirect_to user_path(current_user)
  end
  
  def edit
    @expense = Expense.find(params[:id])
    @product = Product.find_by_expense_id(@expense.id)
    
  end
  
  
  protected
  def begin_of_association_chain
      @current_user    
  end
end
