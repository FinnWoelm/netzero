class UserMailerPreview < ActionMailer::Preview

  def welcome
    user = User.second
    user.password = "abc"
    UserMailer.welcome user.name, user.email, user.password
  end

end