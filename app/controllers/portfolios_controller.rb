class PortfoliosController < ApplicationController
  layout 'portfolio'
  def index
    @portfolios = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

  def new
    @portfolio = Portfolio.new
    3.times { @portfolio.technologies.build }
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
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
      if @portfolio.update(portfolio_params)
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
    # Procura o ID do portfolio para destruir
    @portfolio = Portfolio.find(params[:id])

    # Destroi/deleta o registro
    @portfolio.destroy

    # Redireciona para outra pagina
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was removed.' }
    end
  end

  private

    def portfolio_params
      params.require(:portfolio).permit(:title,
                                        :body,
                                        :subtitle,
                                        technologies_attributes: [:name]
                                       )
    end
end
