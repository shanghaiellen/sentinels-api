SentinelsApi::Application.routes.draw do
  defaults format: :json do
    resources :cards
    resources :heros
    get '/heroes'                => 'heroes#index'
    get '/heroes/:id/activate'   => 'heroes#activate'
    get '/heroes/:id/deactivate' => 'heroes#deactivate'
    get '/heroes/:id'            => 'heroes#show'
    get '/actives'               => 'application#actives'
    get '/cards/:id/activate'    => 'cards#activate'
    get '/cards/:id/deactivate'  => 'cards#deactivate'
  end
end
