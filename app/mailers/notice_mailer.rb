class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_post.subject
  #
  def sendmail_post(post)
    @post = post

    mail to: "go02sleep@gmail.com",
    subject: '【Photogram】投稿されました。'
  end
end
