class DashboardController < ApplicationController
	before_action :authenticate_user!
	before_filter :require_login
	
  def dashboard
  end

  protected

	def require_login
    redirect_to root_path and return unless current_user.present?
  end

end
