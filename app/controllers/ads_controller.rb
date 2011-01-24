class AdsController < ApplicationController
  expose :ad

  def create
    if ad.save
      flash[:notice] = "Ad successfully created"
      redirect_to ad
    else
      render :new
    end
  end
end
