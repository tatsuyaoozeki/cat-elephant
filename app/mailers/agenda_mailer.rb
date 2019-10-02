class AgendaMailer < ApplicationMailer
  default from: "diveintopost@example.com"

  def agenda_mail(agenda)
    @agenda = agenda

    mail to: User.find(@team.user.id).email, subject: "アジェンダ削除しました"
  end
end
