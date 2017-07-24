Rails.application.routes.draw do
  resources :responses
  devise_for :users
  get 'home' => 'info#home'
  get 'venue' => 'info#venue'
  get 'schedule' => 'info#schedule'
  get 'accommodation' => 'info#accommodation'
  get 'menu' => 'info#menu'
  get 'our_story' => 'info#our_story'
  get 'contact_us' => 'info#contact_us'


  root 'info#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
