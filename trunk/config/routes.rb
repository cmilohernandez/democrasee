ActionController::Routing::Routes.draw do |map|
  map.resources :congressmen

  map.resources :congressmen

  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
