class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!
  
  def check_super_admin
    if current_user.is_super_admin? == false
      return redirect_to '/401'
    end
  end
    
end
