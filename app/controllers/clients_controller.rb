class ClientsController < ApplicationController

  before_filter :authenticate_user!

  expose(:clients) {current_user.agency.clients}

  def create
    if client.save
      flash[:notice] = "Client successfully created"
      redirect_to client
    else
      render :new
    end
  end

  def select
    if params[:client_id].empty?
      redirect_to new_client_path
    else
      redirect_to client_path(params[:client_id])
    end
  end

  def index
    flash.keep
    if clients.empty?
      redirect_to new_client_path
    else
      redirect_to client_path(clients.first)
    end
  end
end
