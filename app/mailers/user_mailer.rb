class UserMailer < ActionMailer::Base
  
  default :from => "GreenNaropa <do-not-reply@greennaropa.com>"
  
  #layout 'email'
  
  def welcome name, email, password
    
    @name = name
    @email = email
    @password = password
    
    mail( :to => "#{@name} <#{@email}>",
      :subject => "#{@name}, welcome to GreenNaropa!")

    
    #mail(to: email, subject: "Welcome to Puppify!")
#    
#    subject = "#{name}, welcome to GreenNaropa!"
#    merge_vars = {
#      "NAME" => name,
#      "EMAIL" => email,
#      "CODE" => password
#    }
#    
#    body = mandrill_template("welcome-to-greennaropa", merge_vars)
#
#    send_mail("#{name} <#{email}>", subject, body)

  end
end