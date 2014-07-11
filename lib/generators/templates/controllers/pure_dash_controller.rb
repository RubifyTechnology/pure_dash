class PureDashController < PureDash::ApplicationController
  def index
  end
  
  def home
    render :layout => false
  end
end