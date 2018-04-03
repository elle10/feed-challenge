Rails.application.routes.draw do
  get '/feed', to: 'feed#index', as: :feed
end
