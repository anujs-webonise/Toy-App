class ApplicationMailer < ActionMailer::Base
  default from: EMAIL_FROM
  layout 'mailer'
end
