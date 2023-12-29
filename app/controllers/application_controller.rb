class ApplicationController < ActionController::Base
  def current_controller?(names)
    names.include?(controller_path)
  end
  helper_method :current_controller?
end
