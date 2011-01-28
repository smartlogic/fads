class CreativesController < ApplicationController

  before_filter :authenticate_user!

  expose :creative
  expose(:creatives) { client.creatives }

  def create
    if creative.save
      flash[:notice] = "Creative successfully created"
      redirect_to [client, creative]
    else
      render :new
    end
  end
end
