class AdminController < InheritedResources::Base
  before_filter :check_admin
  def index
  end
end
