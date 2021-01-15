class PurchaseOrderMailer < ActionMailer::Base
  default from: 'vendor@portal@.com'
  layout 'mailer'

  def send_to_vendor(file)
    attachments['test.pdf'] = {
      mime_type: 'application/pdf',
      content: file
    }
    mail(to: 'test@vendor.com', subject: 'You have New Purchase Order(s)!')
  end

  def read_utf8_file_direct
    attachments['test.pdf'] = {
      mime_type: 'application/pdf',
      content: File.read(Rails.root.join('test.pdf'))
    }
    mail(to: 'test@vendor.com', subject: 'You have New Purchase Order(s)!')
  end

  def read_ascii_file_direct
    attachments['test.pdf'] = {
      mime_type: 'application/pdf',
      content: File.read(Rails.root.join('test.pdf')).force_encoding('ASCII-8BIT')
    }
    mail(to: 'test@vendor.com', subject: 'You have New Purchase Order(s)!')
  end
end
