class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception


   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:phnumber, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

   def checkout

   end


   def about

   end

   def account

   end

   def contacts

   end

   def faq

   end

   def goods_compare

   end

   def item

   end

   def privacy_policy

   end

   def product_list

   end

   def search_result

   end

   def shopping_cart

   end

   def shopping_cart_null

   end

   def standard_forms

   end

   def terms_condition

   end

   def wishlist

   end

end
