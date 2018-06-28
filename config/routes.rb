Rails.application.routes.draw do
  get("/launchinfo", {:controller=>"launch_infos", :action=>"index"})
end
