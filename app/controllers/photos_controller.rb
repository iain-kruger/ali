class PhotosController < ApplicationController

  def new
    #create a photo object to be rendered in the form
    @photo = Shoot.find(params[:id]).photos.new
  end

  def create
    #try create the new photo record
    @photo = Shoot.find(params[:id]).photos.create(photo_params)
    #if it gets persisted
    if @photos.persisted?
      flash[:success] = "You have successfully created the photo"
      redirect_to photo_path @photos
    else
      #render the new template with errors showing if any
      render 'new'
    end
  end

  def edit
    @photo = photo.find(params[:id])
  end

  def destroy
  end


  private #this should be protected as this is your security generally.

  def photo_params
    params.require(:photo).permit(:name)
  end
end
