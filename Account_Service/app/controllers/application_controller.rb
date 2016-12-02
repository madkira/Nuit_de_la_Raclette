class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


 before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || extract_locale_from_accept_language_header
  end

  def extract_locale_from_accept_language_header
    (request.env['HTTP_ACCEPT_LANGUAGE'] || 'fr').scan(/^[a-z]{2}/).first
  end

end

