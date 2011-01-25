class TargetGroupsController < ApplicationController

  before_filter :authenticate_user!

  expose(:target_group)

  def create
    if target_group.save
      flash[:notice] = "Target group successfully created"
      redirect_to target_group
    else
      render :new
    end
  end
end
