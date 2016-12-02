# encoding: utf-8
module Admin
  class ApplicationController < ::ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.all

    protect_from_forgery with: :exception

    layout "application"

    rescue_from CanCan::AccessDenied do |exception|
      if current_user
        flash[:danger] = "Vous n'êtes pas autorisé à accéder à cette page."
        # redirect_to main_app.root_path
      else
        flash[:danger] = "Vous devez être connecté pour accéder à cette page"
        # redirect_to main_app.sign_in_path
      end
      redirect_to root_path
    end

    def current_user
      current_organisation
    end

    # include UrlHelper

    # helper_method :current_user

    # before_action do
    #   ActionMailer::Base.default_url_options = {host: request.host_with_port}
    # end

  end
end
