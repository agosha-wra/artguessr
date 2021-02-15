# frozen_string_literal: true

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

    @responseexist = Response.where(user_id: current_user.id, art_id: @art.id, serie_id: @serie.id).size
    @response = if Response.where(user_id: current_user.id, art_id: @art.id, serie_id: @serie.id).length.positive?
                  Response.where(user_id: current_user.id, art_id: @art.id, serie_id: @serie.id)[0]
                else
                  Response.new
                end

    @users_serie = UsersSerie.new if @next.nil?
  end
end
