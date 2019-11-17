class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def new 
    @portfolio = Portfolio.new
  end

  def create
	@portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Seu Portfolio foi criado' }
      else
        format.html { render :new }
      end
    end
  end

  def update
  	@portfolio = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio atualizado com sucesso!' }
      else
        format.html { render :edit }
      end
    end
  end

  def edit
  	@portfolio = Portfolio.find(params[:id])
  end

  def show
  	@portfolio = Portfolio.find(params[:id])
  end

  def destroy
  	#Procura o ID do portfolio para destruir
  	@portfolio = Portfolio.find(params[:id])

  	#Destroi/deleta o registro
		@portfolio.destroy

		#Redireciona para outra pagina
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was removed.' }
    end
  end
end
