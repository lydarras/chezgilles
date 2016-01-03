Rails.application.routes.draw do
  resources :pays
 devise_for :clients, controllers: { sessions: "clients/sessions" }
 
 get '/panier' => 'panier#index'
 get '/panier/clear' => 'panier#clearPanier'
 get '/panier/:id' => 'panier#add'
 
 resources :commandes
 get '/creation' => 'commandes#create'
 resources :categories
 root 'home#index'
 resources :produits
end
