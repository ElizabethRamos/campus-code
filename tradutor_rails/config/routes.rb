Rails.application.routes.draw do

  root to:'translations#index'
  resources :translations
  resources :translation_requests, only: [:new, :create]



  #get 'translations', to: 'translations#list'
  #get 'translation/:id', to: 'translations#show', as: 'translation'
  #get 'new_translation', to: 'translations#new'
  #post 'translations', to: 'translations#create'
  #get 'translation/:id/edit', to:'translations#edit', as: 'edit_translation'
  #patch 'translation/:id', to:'translations#update'
  #put 'translation/:id', to:'translations#update'
  #delete 'translation/:id', to: 'translations#destroy'
  #resources :translations
end
