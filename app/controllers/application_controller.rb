class ApplicationController < ActionController::Base
  layout :layout_by_resource
  protect_from_forgery prepend: true
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
      invoices_path
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
  protected :layout_by_resource

end
