Rails.application.routes.draw do
  root 'home#index'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'signup_confirmation', to: 'users#show'
  get '/passwords/new', to: 'clearance/passwords#new', as: 'new_password'
  post '/passwords', to: 'clearance/passwords#create', as: 'passwords'
  get '/passwords', to: redirect('/passwords/new') # Adicionando uma rota para redirecionar para a página de redefinição de senha
end
