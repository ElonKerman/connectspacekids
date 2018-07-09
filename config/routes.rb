Rails.application.routes.draw do
  devise_for :users
  get("/launchinfo", {:controller=>"launch_infos", :action=>"index"})
  root 'launch_infos#index'

end
