class StaticPagesController < ApplicationController
  def new
  	@info = Contact.new
  end

  def create
  	@info = Contact.new(static_params) 
    @info.save
    ContactMailer.contact_email(@info).deliver
    flash[:notice] = "Your email has been sent to Ali."
    redirect_to :action => 'new'
  end

  def home
  end

  def about
  end

  def contact
  end

  def gallery
  end

private

    def static_params
      params.require(:contact).permit(:name, :email, :msg, :shoot_type, :date_of_event, :event_times)
    end

end
  


