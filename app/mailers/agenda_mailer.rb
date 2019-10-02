class AgendaMailer < ApplicationMailer
  default from: "diveintopost@example.com"

  def agenda_mail(email)
    @email = email

    mail to: @email, subject: "アジェンダ削除しました"
  end
end
