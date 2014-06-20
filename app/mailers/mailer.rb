class Mailer < ActionMailer::Base

  layout 'mailer'

  default from: Settings.mailer.default_from_email

  default_url_options[:host] = Settings.mailer.host_for_email_with_www

  def dummy_mailer(recipient_email)
    mail(to: recipient_email, subject: 'Test Email') do |format|
      format.html
    end
  end

  def new_content_notify(content)
    @content = content

    mail to: Settings.mailer.notify_to,
         subject: 'We got new content!'
  end

end
