class Message < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
        :subject => "R.Enterprise Contact Form",
        :to => "robertsenterprisetr@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end