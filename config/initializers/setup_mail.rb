ActionMailer::Base.smtp_settings = {
  :address              => "smtp.fas.harvard.edu",
  :port                 => 25,
  :domain               => "fas.harvard.edu",
  :user_name            => "kbpark",
  :password             => "gajigajigomH3r3",
  :authentication       => "plain",
  :enable_starttls_auto => true
}