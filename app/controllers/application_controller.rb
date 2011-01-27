class ApplicationController < ActionController::Base
  protect_from_forgery

  expose(:client)
end
