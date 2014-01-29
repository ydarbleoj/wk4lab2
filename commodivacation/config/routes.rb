Commodivacation::Application.routes.draw do
 
  root 'sites#index'

  # get '/locations', to: 'locations#index', as: 'locations'
  # get '/locations/:id', to: 'locations#show', as: 'location'

  resources :locations, :activities, :sites



end


#  root GET    /                              sites#index
#     locations GET    /locations(.:format)           locations#index
#      location GET    /locations/:id(.:format)       locations#show
#               GET    /locations(.:format)           locations#index
#               POST   /locations(.:format)           locations#create
#  new_location GET    /locations/new(.:format)       locations#new
# edit_location GET    /locations/:id/edit(.:format)  locations#edit
#               GET    /locations/:id(.:format)       locations#show
#               PATCH  /locations/:id(.:format)       locations#update
#               PUT    /locations/:id(.:format)       locations#update
#               DELETE /locations/:id(.:format)       locations#destroy
#    activities GET    /activities(.:format)          activities#index
#               POST   /activities(.:format)          activities#create
#  new_activity GET    /activities/new(.:format)      activities#new
# edit_activity GET    /activities/:id/edit(.:format) activities#edit
#      activity GET    /activities/:id(.:format)      activities#show
#               PATCH  /activities/:id(.:format)      activities#update
#               PUT    /activities/:id(.:format)      activities#update
#               DELETE /activities/:id(.:format)      activities#destroy
#         sites GET    /sites(.:format)               sites#index
#               POST   /sites(.:format)               sites#create
#      new_site GET    /sites/new(.:format)           sites#new
#     edit_site GET    /sites/:id/edit(.:format)      sites#edit
#          site GET    /sites/:id(.:format)           sites#show
#               PATCH  /sites/:id(.:format)           sites#update
#               PUT    /sites/:id(.:format)           sites#update
#               DELETE /sites/:id(.:format)           sites#destroy