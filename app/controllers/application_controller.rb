class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def find_verified_user # this checks whether a user is authenticated with devise
    if verified_user = env['warden'].user
      verified_user
    else
      reject_unauthorized_connection
    end
  end
end
