DataNormalizer::Application.routes.draw do

  get 'data_importer/index'
  post 'data_importer/import'

  root 'home#index'

end