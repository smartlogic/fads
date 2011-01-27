class ClientsController < ApplicationController

  expose(:client)

  def create
    if client.save
      flash[:notice] = "Client successfully created"
      redirect_to "/"
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
end
