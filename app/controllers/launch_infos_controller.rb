require "open-uri"
require "json"
class LaunchInfosController < ApplicationController
  def index
    @data = open("https://launchlibrary.net/1.4/launch/next/15").read
    @launches = JSON.parse(@data)["launches"]
    @launch_infos = LaunchInfo.order(:date_time => :asc)
    render('index.html.erb')
  end
end
