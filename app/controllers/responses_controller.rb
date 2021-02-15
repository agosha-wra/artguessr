class ResponsesController < ApplicationController
  def show
    @response = Response.find(params[:id])
  end

  def create
    @response = Response.new(response_params)

    @art = Art.find(params[:response][:art_id])
    @artsserie = ArtsSerie.where(art_id: params[:response][:art_id], serie_id: params[:response][:serie_id]).first

    difflat = (@art.latitude - @response.latitude).abs
    difflong = (@art.longitude - @response.longitude).abs
    distance = difflat + difflong

    score = if distance < 20
              1000 - (50 * distance)
            else
              0
            end
    response_distance = Geocoder::Calculations.distance_between([@art.latitude, @art.longitude], [@response.latitude, @response.longitude])
    @response.distance = (response_distance / 1.60934).to_d.round(2, :truncate).to_f
    @response.arts_serie = @artsserie
    @response.serie_id = @artsserie.serie.id
    @response.score = score.to_i
    @response.user = current_user
    @response.art = @art
    @response.save!
    redirect_to controller: 'arts', action: 'show', id: @art.id, serie: params[:response][:serie_id]
  end

  def response_params
    params.require(:response).permit(:latitude, :longitude)
  end
end
