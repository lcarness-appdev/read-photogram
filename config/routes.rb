Rails.application.routes.draw do
  match("/recent",{:controller => "pictures", :action =>"latest", :via => "get"})
  match("/photos/:pic_id",{:controller => "pictures", :action => "show_details", :via => "get"})
end
