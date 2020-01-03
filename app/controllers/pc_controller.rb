class PcController < ApplicationController
  def contactus

  end

  def nc

  end

  def ncc
    nc = Channel.new
    nc.name = params["channel-name"]
    nc.save
    redirect_to('/chat')
  end


  def mw
    render('mars.html.erb')
  end

end
