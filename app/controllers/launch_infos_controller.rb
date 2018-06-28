class LaunchInfosController < ApplicationController
  def index
    @launch_infos = LaunchInfo.all
    render('index.html.erb')
  end
end
