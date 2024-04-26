class PagesController < ApplicationController
  def home
    flash[:notice] = "Welcome to the home page!"
    flash[:info] = "This is an info message."
    flash[:success] = "This is a success message."
    flash[:alert] = "This is an alert message."
  end
end
