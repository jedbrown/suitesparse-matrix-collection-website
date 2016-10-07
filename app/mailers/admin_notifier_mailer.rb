class AdminNotifierMailer < ApplicationMailer
  include Roadie::Rails::Automatic
  self.asset_host = nil
  default :from => ENV['EMAIL_LOGIN']

  # Send a notification email with the new matrix information
  def send_matrix_submitted_email(new_matrix)
    @new_matrix = new_matrix
    mail( to: ENV['DESTINATION_EMAIL'],
          subject: 'New Matrix Submitted!',
          template_path: 'admin_notifier',
          template_name: 'new_matrix_email'
     )
  end
end
