# Class that is created when a user finishes all art in a serie and has responses for each art. Stores global score.

class UsersSeriesController < ApplicationController
  def new
    @users_serie = UsersSerie.new
  end

  def create
    @users_serie = UsersSerie.new(users_serie_params)
    @responses = Response.where(user_id: @users_serie.user_id, serie_id: @users_serie.serie_id)
    score_arr = []
    @responses.each do |r|
      score_arr << r.score
    end
    @users_serie.score = (score_arr.reduce(0, :+) / @responses.count).to_i
    @users_serie.save!
    redirect_to controller: 'users_series', action: 'show', id: @users_serie.id
  end

  def show
    @users_serie = UsersSerie.find(params[:id])
    @responses = Response.where(user_id: @users_serie.user_id, serie_id: @users_serie.serie_id)
  end

  private

  def users_serie_params
    params.require(:users_serie).permit(:user_id, :serie_id)
  end
end
