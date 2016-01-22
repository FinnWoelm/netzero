require "mandrill"

class BaseMandrillMailer < ActionMailer::Base
  
  # from https://robots.thoughtbot.com/how-to-send-transactional-emails-from-rails-with-mandrill
  
  default(
    from: "GreenNaropa <do-not-reply@fwoelm.com>"
  )

  private

  def send_mail(email, subject, body)
    mail(to: email, subject: subject, body: body, content_type: "text/html")
  end

  def mandrill_template(template_name, attributes)
    mandrill = Mandrill::API.new(ENV["MANDRILL_SMTP_PASSWORD"])

    merge_vars = attributes.map do |key, value|
      { name: key, content: value }
    end

    mandrill.templates.render(template_name, [], merge_vars)["html"]
  end
  
  def mandrill_send(template_name, content)
    mandrill = Mandrill::API.new(ENV["MANDRILL_SMTP_PASSWORD"])
    
    puts "hi"
    
    result = mandrill.messages.send_template(template_name, [], content)
    
    puts result
    
    
    return result['status'] == 'sent'
  end
end
