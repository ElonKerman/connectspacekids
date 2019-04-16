Rails.application.routes.draw do
  devise_for :users#, controllers: {
  #  sessions: 'users/sessions'
  #}

  get("/launchinfo", {:controller=>"launch_infos", :action=>"index"})
  root 'pc#home'


  get("/chat", {:controller=>"chat", :action=>"index"})
  get("/channels/:id", {:controller=>"chat", :action=>"channel"})
  get("/sendm", {:controller=>"chat", :action=>"sendm"})
  get("/messages/:id/delete", {:controller=>"chat", :action=>"deletem"})
  get("/users/:id/delete", {:controller=>"chat", :action=>"deleteu"})
  get("/contactus", {:controller=>"pc", :action=>"contactus"})
  get("/chat-tos", {:controller=>"chat", :action=>"tos"})
  get("/achat", {:controller=>"chat", :action=>"achat"})
end
