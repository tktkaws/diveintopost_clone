class DestroyMailer < ApplicationMailer
  default from: 'from@example.com'

  def destroy_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.map(&:email), subject: "#{@agenda.title}が削除されました"
  end
end