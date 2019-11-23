class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  # Alterando o metodo padrao do devise para ter usuario sem ter usuario logado
  include CurrentUserConcern
  include DefaultPageContent
end
