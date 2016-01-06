class ClipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.clip_mailer.new_clip.subject
  #
  def new_clip(to_address)
    @greeting = "Hi"

    mail to: to_address
  end
end
