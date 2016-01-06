class ApplicationMailer < ActionMailer::Base
  default from: "mason.f.matthews@gmail.com"
  layout 'mailer'
  before_filter :prepend_view_paths

  def prepend_view_paths
     prepend_view_path "app/views"
   end
end
