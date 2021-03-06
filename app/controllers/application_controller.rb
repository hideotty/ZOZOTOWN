class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
   before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kana_name, :postal_code, :phone_number, :address, :representative])
  end

  def after_sign_in_path_for(resource)
    case resource
    when Shop
      shop_path(current_shop.id)
    when User
      products_path
    end
  end
end

