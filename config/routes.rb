Rails.application.routes.draw do
  match("/recent",{:controller => "pictures", :action =>"latest", :via => "get"})
end
