class Mailer < ActionMailer::Base

  layout 'mailer'

  default from: Settings.mailer.default_from_email

  default_url_options[:host] = Settings.mailer.host_for_email_with_www

  def contact_us_notification(contact)
    @email = contact.email
    @title = contact.title
    @body  = contact.body
    subject = "Contact us message from #{@email}"

    mail(to: Settings.support_email, from: @email,  subject: subject) do |format|
      format.html
    end
  end

  def new_content_notify(content)
    @content = content

    mail to: Settings.mailer.notify_to,
         subject: 'We got new content!'
  end

end
