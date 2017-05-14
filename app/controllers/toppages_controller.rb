class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @task = current_user.tasks.new
      @tasks = current_user.tasks.order('updated_at DESC').page(params[:page])
    end
  end
end
