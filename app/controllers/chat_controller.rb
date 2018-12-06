require "open-uri"
require "json"
class ChatController < ApplicationController
  def index
    @channels = Channel.all

    redirect_to("/channels/#{@channels.first.id}")
  end
  def channel
    @channels = Channel.all
    @channel = Channel.find(params["id"])
    render('index.html.erb')
  end
  def sendm
    message = Message.new
    message.user_id = current_user.id
    message.text = params["message"]
    message.channel_id = params["channel_id"]
    message.save
    redirect_to("/channels/#{message.channel_id}")
  end
end
