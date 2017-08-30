class MessagesController < ApplicationController
	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)
		if @message.save
			flash[:notice] = "message sent successfully"
		    redirect_to message_path(@message)
	    else
		    render :new
		end
	end

  def show
  	@message = Message.find(params[:id])
  	number_to_send_to = "+15186221670"

    twilio_sid = "AC57cd71fe16b5024c8e3bedbad79c605e"
    twilio_token = "89ab1dafc2fe1baed95023c0dbe2f2d5"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

  	@twilio_client.api.account.messages.create(
      :from => "+14243432192",
      :to => number_to_send_to,
      :body => @message.messages
    )
  end

  private
	def message_params
		params.require(:message).permit(:messages)
	end
end
