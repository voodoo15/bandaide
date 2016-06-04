class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    musician_path(current_musician)
  end
end
