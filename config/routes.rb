Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/menu' => 'rtc#menu'
  post '/menu' => 'rtc#qr_code'
  get '/rtc/:number' => 'rtc#retrieve', as: :card
  post '/menu' => 'rtc#menu', as: :post_card
  patch '/rtc/:number' => 'rtc#update'
end
