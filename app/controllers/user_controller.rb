class UserController < InheritedResources::Base
   before_filter :authenticate_user!,:which_user
   actions :show
  
end
