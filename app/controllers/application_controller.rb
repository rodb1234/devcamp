class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  # Alterando o metodo padrao do devise para ter usuario sem ter usuario logado
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = copyright('Rodrigo Castro', 'Todos direitos reservados')
  end

  def copyright(name, msg)
    "&copy; #{Time.now.year} | <b>#{name}</b> - #{msg}".html_safe
  end
end
