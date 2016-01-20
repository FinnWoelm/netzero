require "mandrill"

class BaseMandrillMailer < ActionMailer::Base
  
  # from https://robots.thoughtbot.com/how-to-send-transactional-emails-from-rails-with-mandrill
  
  default(
    from: "hello@example.com",
    reply_to: "hello@example.com"
  )
  
  def email(email)
    mail(to: 'finn.woelm@gmail.com', subject: "test", body: "body", content_type: "text/html")
  end

  private

  def send_mail(email, subject, body)
    mail(to: email, subject: subject, body: body, content_type: "text/html")
  end

  def mandrill_template(template_name, attributes)
    mandrill = Mandrill::API.new(ENV["SMTP_PASSWORD"])

    merge_vars = attributes.map do |key, value|
      { name: key, content: value }
    end

    mandrill.templates.render(template_name, [], merge_vars)["html"]
  end
end
