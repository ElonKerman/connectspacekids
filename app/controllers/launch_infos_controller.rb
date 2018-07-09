class LaunchInfosController < ApplicationController
  def index
    @launch_infos = LaunchInfo.order(:date_time => :asc)
    render('index.html.erb')
  end
end
