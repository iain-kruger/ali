class PhotosController < ApplicationController

  def new
    #create a photo object to be rendered in the form
    @photo = Shoot.find(params[:shoot_id]).photos.new
  end

  def create
    #try create the new photo record
    @photo = Shoot.find(params[:shoot_id]).photos.build(photo_params)
    @photo.save
    redirect_to shoot_path(params[:shoot_id])
  end

  def show
     @shoot = Shoot.find(params[:shoot_id])
    @photos = @shoot.photos
  end
def index
  @shoot = Shoot.find(params[:shoot_id])
    @photos = @shoot.photos
end

  def edit
    @photo = photo.find(params[:id])
  end

  def destroy
    Photo.find(params[:id]).destroy
    redirect_to shoot_path(params[:shoot_id])
  end


  private #this should be protected as this is your security generally.

  def photo_params
    params.require(:photo).permit(:name, :photo)
  end

end
