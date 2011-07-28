class UserController < InheritedResources::Base
   before_filter :authenticate_user!
   actions :show,:index
end
