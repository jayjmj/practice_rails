class EmailController < ApplicationController
  def email_form
  end

  def email_send
    @email = params[:email]
    @title = params[:title]
    @content = params[:content]

    gmail = Gmail.connect("jsg1504@gmail.com","google1504")
    gmail.deliver do
      to email
      subject title
      text_part do
        body content
      end
    end
    gmail.logout
  end

end
