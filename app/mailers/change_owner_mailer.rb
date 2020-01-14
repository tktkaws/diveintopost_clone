class ChangeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail(team)
    @team = team
    mail to: @team.owner.email, subject: "#{@team.name}のオーナー権限が移譲されました"
  end
end