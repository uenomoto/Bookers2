# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  
  # The path used after sign up.
   def after_sign_up_path_for(resource)
     flash[:notice] = "Welcome! You have signed up successfully."
     user_path(current_user)
   end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
