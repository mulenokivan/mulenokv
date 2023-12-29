class WelcomeController < ApplicationController
  def home
  end

  def set_theme
    # if params[:theme].present? && params[:theme].in? ['dark', 'light']
      cookies[:theme] = params[:theme]
      redirect_to(request.referrer || root_path)
    # end
  end
end
