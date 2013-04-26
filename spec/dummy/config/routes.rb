Rails.application.routes.draw do
  mount Spree::Core::Engine => '/'

  mount Spree::Catalogillo::Engine => "/catalogillo"

end
