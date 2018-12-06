Rails.application.routes.draw do
  devise_for :users#, controllers: {
  #  sessions: 'users/sessions'
  #}

  get("/launchinfo", {:controller=>"launch_infos", :action=>"index"})
  root 'launch_infos#index'


  get("/chat", {:controller=>"chat", :action=>"index"})
  get("/channels/:id", {:controller=>"chat", :action=>"channel"})
  get("/sendm", {:controller=>"chat", :action=>"sendm"})
end
