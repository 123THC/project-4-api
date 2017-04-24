class UserMailer < ApplicationMailer
  default from: 'oddjobmailer@gmail.com'

  def new_job_email(user, job)
    @user = user
    @job = job.id
    @url  = 'https://warm-reef-46815.herokuapp.com/jobs'
    mail(to: @user.email, subject: 'Your Job has been listed')
  end
end
