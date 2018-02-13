Rails.application.routes.draw do
  # hier onder is a default route, a syntax route
  # get ':controller(/:action(/:id))'

  # hier onder root is demo, it is mean when i have a mistake in url then will go to root
  root 'demo#index'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/sadek'
  # get 'demo/index1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
