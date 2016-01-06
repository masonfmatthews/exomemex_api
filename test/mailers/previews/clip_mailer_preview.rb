# Preview all emails at http://localhost:3000/rails/mailers/clip_mailer
class ClipMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/clip_mailer/new_clip
  def new_clip
    ClipMailer.new_clip
  end

end
