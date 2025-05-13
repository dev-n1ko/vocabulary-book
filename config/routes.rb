Rails.application.routes.draw do
  # get 'words/search' => "words#"



  resources :words do
    collection do
      get 'search'
    end
  end

end