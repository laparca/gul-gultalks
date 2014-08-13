class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  def access_denied(exception)
    redirect_to root_path, :alert => exception.message
  end

  def set_locale
    I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
  end
end
