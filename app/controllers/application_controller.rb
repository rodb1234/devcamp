class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  # Alterando o metodo padrao do devise para ter usuario sem ter usuario logado
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
   #  @copyright = ViewToolGemRodrigo::Renderer.copyright('Rodrigo Castro', 'Todos direitos reservados')
  end
end
