class UserMailer < BaseMandrillMailer
  def welcome(email, name, password)
    
    
    #mail(to: email, subject: "Welcome to Puppify!")
    
    subject = "#{name}, welcome to GreenNaropa!"
    merge_vars = {
      "NAME" => name,
      "EMAIL" => email,
      "CODE" => password
    }
    
    body = mandrill_template("welcome-to-greennaropa", merge_vars)

    send_mail(email, subject, body)

  end
end