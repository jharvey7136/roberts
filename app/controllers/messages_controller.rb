class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.request = request

    respond_to do |format|

      if @message.deliver
        format.html { redirect_to root_path}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }

      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end




    end




  end







end
