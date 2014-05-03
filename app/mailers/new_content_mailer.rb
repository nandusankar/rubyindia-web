class NewContentMailer < ActionMailer::Base
  default from: "new_content@rubyindia.org"

  NOTIFY_TO = ["contact@rubyindia.org"]

  def new_content_notify(content)
    @content = content

    mail to: NOTIFY_TO.join(','), 
         subject: 'We got new content!'
  end
end
