class UserMailer < ApplicationMailer
  default from: 'oddjobmailer@gmail.com'

  def new_job_email(user, job)
    @user = user
    @job = job.id
    @url  = 'http://localhost:7000/jobs'
    mail(to: @user.email, subject: 'Your Job has been listed')
  end
end
