class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include APIErrorHandler
  include Pundit
end
