class ShootsController < ApplicationController
  http_basic_authenticate_with :name => "ali", :password => "adminali", only: :index

  def new
  	@shoot = Shoot.new
  end

  def create
  	@shoot = Shoot.new(shoot_params) 
    @shoot.save
    redirect_to :action => 'index'
  end

  def destroy
    Shoot.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def edit
    @shoot = Shoot.find(params[:id])
  end

   def update
    @shoot=Shoot.find(params[:id])
    if @shoot.update_attributes(shoot_params)
      flash[:success] = "Profile updated"
      redirect_to :action => 'index'
    else
      render 'edit'
    end
  end

  def show
    @shoot = Shoot.find(params[:id])
    @photos = @shoot.photos
  end

def index
  @shoots = Shoot.all
  end

def photos
  @shoot = Shoot.find(params[:shoot_id])
  @Photos = @shoot.photos
	
end

  def gallery
    @catagory= (params[:catagory])
    @shoots = Shoot.where(catagory: @catagory) 
  end


  private

    def shoot_params
      params.require(:shoot).permit(:catagory, :name, :discription, :thumbnail)
    end

end
