class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  before_action :detect_device_format







private

  def detect_device_format
    case request.user_agent

    when /Android|iPhone|iPad|iPod|BlackBerry|Windows Phone|mobile/i
      request.variant = :mobile

    end


  end





end
