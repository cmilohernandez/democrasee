ActionController::Routing::Routes.draw do |map|
  Clearance::Routes.draw(map)
  
  map.resources :bills

  map.resources :congressmen
  
  map.root :controller => "dashboard", :action => "index"
    
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
