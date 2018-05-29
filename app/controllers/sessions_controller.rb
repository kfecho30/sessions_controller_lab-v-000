class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name].nil?
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end
end
