# frozen_string_literal: true

class SeriesController < ApplicationController
  def index
    @series = Serie.all
    @users_series = (UsersSerie.where(user_id: current_user.id) if current_user)
  end

  def show
    @serie = Serie.find(params[:id])
    @arts_series = ArtsSerie.where(serie_id: @serie.id)
    @arts = []
    @arts_series.each do |as|
      @arts << as.art
    end
    @users_serie = UsersSerie.where(user_id: current_user.id, serie_id: @serie.id) if current_user
  end
end
