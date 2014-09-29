class PhotosController < ApplicationController
def new
end
  def create
  	
  @photo = Shoots.photos.build(photo_params)
   @photo.save	
  end
def edit
	@photo = photo.find(params[:id])
end
  def destroy
  end
def photo_params
      params.require(:photo).permit(:name)
    end
end