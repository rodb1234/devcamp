class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'

  def index
    @portfolios = Portfolio.by_position
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
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio atualizado com sucesso!' }
      else
        format.html { render :edit }
      end
    end
  end

  def edit
  end

  def show
  end

  def destroy
    # Procura o ID do portfolio para destruir - set_portfolio_item

    # Destroi/deleta o registro
    @portfolio.destroy

    # Redireciona para outra pagina
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was removed.' }
    end
  end

  def sort
    params[:span].each_with_index do |id, index|
    Span.where(id: id).update_all(position: index + 1)
    end
    respond_to do |format|
      format.js
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

    def set_portfolio_item
      @portfolio = Portfolio.find(params[:id])
    end
end
