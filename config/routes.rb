LocalesAdmin::Engine.routes.draw do
  root to: 'main#index'
  post 'locales_admin' => 'main#show', format: :js
  match 'locales_admin' => 'main#update', format: :js, via: [:put, :patch]
end
