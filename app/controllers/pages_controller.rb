class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
  	redirect_to dashboard_path if current_user
  end

  def dashboard
    @homes = current_user.homes
  end
end
