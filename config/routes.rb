Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  post '/', to: 'home#login'
  post 'daftar', to: 'home#daftar'
  delete 'logout', to: 'home#logout'

  get 'profile', to: 'profile#index'
  post 'postKiriman', to: 'profile#postKiriman'
  delete 'hapusKiriman/:id', to: 'profile#hapusKiriman', as: :hapusKiriman
  post 'postKomentar', to: 'profile#postKomentar'

  get 'news', to: 'news#index'
  post 'postKirimanNews', to: 'news#postKiriman'
  delete 'hapusKiriman/:id', to: 'news#hapusKiriman', as: :hapusKirimanNews
  post 'postKomentarNews', to: 'news#postKomentar'
end
