class ArtsController < ApplicationController
  
  def show
    @art = Art.find(params[:id])
    @serie = Serie.find(params[:serie])
    @artserie = ArtsSerie.where(serie_id: params[:serie], art: @art).first

    @arts_series = ArtsSerie.where(serie_id: params[:serie])
    @arts = []
    @arts_series.each do |as|
      @arts << as.art
    end 

    @index = @arts.index(@art)
    @next = @arts[@arts.index(@art).to_i + 1]

    @responseexist = Response.where(user_id: current_user.id, art_id: @art.id).size
    if Response.where(user_id: current_user.id, art_id: @art.id).length > 0 
      @response = Response.where(user_id: current_user.id, art_id: @art.id)[0]
    else
      @response = Response.new 
    end 

    if @next == nil 
      @users_serie = UsersSerie.new
    end 

  end

end