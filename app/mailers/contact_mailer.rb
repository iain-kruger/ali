class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_email(info)
  	@info = info
 	mail(:to => "alibodillphotography@gmail.com", :subject => "#{info.shoot_type}-#{info.name}", :from => info.email)
  end
end
