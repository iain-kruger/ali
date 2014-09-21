class ShootsController < ApplicationController
  def new
  	@shoot = Shoot.new
  end

  def create
  	@shoots = Shoot.new(params[:id]) 
    @shoots.save
  end

  def destroy
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
  @name=(params[:shootName])
  @shoot=Shoot.find_by(name: @name)
  @Photos = @shoot.photos
	
end

  private

    def shoot_params
      params.require(:shoot).permit(:catagory,:name,:discription, :thumbnail, 
                                   )
    end

end
