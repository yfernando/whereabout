class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_filter :set_system_categories
  before_filter :get_pending_invitations
  add_flash_types :error
  add_flash_types :success
  
  def after_sign_in_path_for(resource)
    search_path
  end

  protected
  
  def set_system_categories
    @system_categories = Category.where(user_id: nil)
  end

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

  def get_pending_invitations
    if current_user
      @invitations = Invitation.where(to: current_user.email)
    end
  end
end
