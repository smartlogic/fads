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
end
