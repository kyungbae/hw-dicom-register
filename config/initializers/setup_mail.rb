ActionMailer::Base.smtp_settings = {
  :address              => "mail.seededu.com",
  :port                 => 26,
  :domain               => "seededu.com",
  :user_name            => "kyungbae",
  :password             => "IgajigajigomH3r3",
  :authentication       => :login,
  :enable_starttls_auto => true
}