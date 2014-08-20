class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource
  
  def after_sign_in_path_for(resource)
    search_path
  end

  protected

  def layout_by_resource
    controller_action = "#{params[:controller]}/#{params[:action]}"

    case controller_action
    when "devise/passwords/new", "devise/passwords/create", "devise/passwords/edit",
      "devise/sessions/new", "devise/sessions/create",
      "devise/registrations/new", "devise/registrations/create"
      "no_layout"
    else
      "application"
    end
  end
end
