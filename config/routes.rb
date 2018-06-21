Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/menu' => 'pages#menu'
  get '/rtc' => 'rtc#retrieve'
end
