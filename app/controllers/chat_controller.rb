require "open-uri"
require "json"
class ChatController < ApplicationController
  def index
    @channels = Channel.all

    redirect_to("/channels/#{@channels.first.id}")
  end
  def channel
    if current_user.blank?
      redirect_to("/", :notice => "You must login to access the chat feature of connectspacekids.")
    else
      @channels = Channel.all
      @channel = Channel.find(params["id"])
      @messages = Message.where(:channel_id => @channel.id)
      render('index.html.erb')
    end
  end
  def sendm
    message = Message.new
    message.user_id = current_user.id
    message.text = params["message"]
    message.channel_id = params["channel_id"]
    message.save
    redirect_to("/channels/#{message.channel_id}")
  end
  def deletem
    message = Message.find(params["id"])
    message.destroy
    redirect_to("/channels/#{message.channel_id}")
  end
end
