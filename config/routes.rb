Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/menu' => 'pages#menu'
  get '/rtc/:number' => 'rtc#retrieve', as: :card
  patch '/rtc/:number' => 'rtc#update'
end
