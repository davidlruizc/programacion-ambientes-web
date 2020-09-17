class ArticulosController < ApplicationController
  def new
  end

  def create
    @articulo = Articulo.new(params[:articulo])

    @articulo.save
    redirect_to :action => :show, :id => @articulo.id
  end

  def show
    @articulo = Articulo.find(params[:id])
  end
end
