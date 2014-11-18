ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "iain.kruger@gmail.com",
  :user_name            => "iain.kruger",
  :password             => "9xLXHFaTGPDzdno ",
  :authentication       => "plain",
  :enable_starttls_auto => true
}