class PhotosController < ApplicationController
def new
end
  
  def create
  	@shoot = Shoot.find(params[:id])
 	@photo = @shoot.photos.build(photo_params)
  	@photo.save	
  end

def edit
end

  def destroy
  end
def photo_params
      params.require(:photo).permit(:name)
    end
end