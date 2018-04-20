Rails.application.routes.draw do
  # root 'users#index'

  resources :microposts

  root 'static_pages#home'
  # get 'static_pages#home'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
