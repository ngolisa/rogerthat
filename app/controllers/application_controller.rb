class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:home, :design]

  before_action :configure_permitted_parameters, if: :devise_controller?


  private

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar])
  end

  def default_url_options
  { host: ENV["www.rogerthat.club"] || "localhost:3000" }
  end
end
