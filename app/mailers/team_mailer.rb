class TeamMailer < ApplicationMailer
  default from: "diveintopost@example.com"

  def team_mail(team)
    @team = team

    mail to: User.find(@team.owner_id).email, subject: "オーナー権限変更メール"
  end
end
