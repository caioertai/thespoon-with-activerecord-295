Rails.application.routes.draw do
  # root to: 'restaurants#index'

  # Restaurants
  # verb '/path', to: 'controller#action'

  # 1. Preferred
  # resources + only: or except:. Be mindful of what you're adding to the app!
  resources :restaurants, only: [:index]

  # 2. Yeah... that's ok...
  # If you actually realize during the lifetime of your app that you need
  # all 7 actions.
  # resources :restaurants

  # 3. Last resort
  # IF and ONLY IF there's NO way to make the route work with resources
  # hard code it with this syntax.
  # Index
  # get '/restaurants', to: 'restaurants#index'

  # Show
  # get '/restaurants/:id', to: 'restaurants#show'

  # Destroy
  # delete '/restaurants/:id', to: 'restaurants#destroy'

  # New
  # get '/restaurants/new', to: 'restaurants#new'
  # Create
  # post '/restaurants', to: 'restaurants#create'

  # Edit
  # get '/restaurants/:id/edit', to: 'restaurants#edit'
  # Update
  # put '/restaurants/:id', to: 'restaurants#update'
  # patch '/restaurants/:id', to: 'restaurants#update'
end
