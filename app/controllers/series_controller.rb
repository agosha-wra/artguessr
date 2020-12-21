class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def show 
    @serie = Serie.find(params[:id])
    @arts_series = ArtsSerie.where(serie_id: @serie.id)
    @arts = []
    @arts_series.each do |as|
      @arts << as.art
    end 
  end 

end
