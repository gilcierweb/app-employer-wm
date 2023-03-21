class ApplicationController < ActionController::Base
  layout :layout_by_resource

  def route_not_found
    render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
  end

  private

  def layout_by_resource
    if devise_controller?
      "auth"
    else
      "application"
    end
  end
end
