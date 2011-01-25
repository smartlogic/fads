class CreativesController < ApplicationController

  before_filter :authenticate_user!

  expose :creative

  def create
    if creative.save
      flash[:notice] = "Creative successfully created"
      redirect_to creative
    else
      render :new
    end
  end
end
