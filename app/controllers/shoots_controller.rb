class ShootsController < ApplicationController
  def new
  	@shoot = Shoot.new
  end

  def create
  	@shoot = Shoot.new(shoot_params) 
    @shoot.save
    redirect_to '/index'
  end

  def destroy
    shoot.find(params[:id]).destroy
    redirect_to '/index'
  end

  def edit
  end

  def show
    @catagory= (params[:catagory])
    @shoots = Shoot.where(catagory: @catagory) 
    if @catagory == "newborn"
      @catagory = "New Born"
    end
  end

def index
  @shoots = Shoot.all
  end

def photos
  @shoot = Shoot.find(params[:shoot_id])
  @Photos = @shoot.photos
	
end

def showadmin
  
 @shoot = Shoot.find(params[:id])
  @photos = @shoot.photos

  @photoform = @shoot.photos.build
end

  private

    def shoot_params
      params.require(:shoot).permit(:catagory, :name, :discription, :thumbnail)
    end

end
