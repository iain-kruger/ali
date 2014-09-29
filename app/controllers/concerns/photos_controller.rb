class PhotosController < ApplicationController

  def create
    @photos = Shoot.photos.build
    end
  end

  def destroy
  end

end