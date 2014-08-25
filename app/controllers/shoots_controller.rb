class ShootsController < ApplicationController
  def new
  end

  def show
  	gallery ="events"
  	@shoots = Shoot.where(catagory: gallery)

  end
end
