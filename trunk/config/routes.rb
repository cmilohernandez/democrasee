ActionController::Routing::Routes.draw do |map|
  Clearance::Routes.draw(map)
  
  map.resources :bills

  map.resources :congressmen
    
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
