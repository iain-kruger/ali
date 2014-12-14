class StaticPagesController < ApplicationController
  def new
  	@info = Contact.new
  end

  def create
  	@info = Contact.new(static_params) 
    ContactMailer.contact_email(@info).deliver
    flash[:notice] = "#{@info.name}, an email has been sent to me. I will be in contact with you soon. "
    redirect_to :action => 'new'
  end

  def home
    @shoots=Shoot.last(3)
  end

  def about
  end

  def contact
  end

  def gallery
  end

  def packages
  end

private

    def static_params
      params.require(:contact).permit(:name, :email, :msg, :shoot_type, :date_of_event, :event_times)
    end

end
  


