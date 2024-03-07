class CharacterSearchController < ApplicationController
  def index
    if params[:search]
      @character_data = Character.new.fetch_character(params[:search])
    end
  end

  def character_rankings
    @character_data["zoneRankings"]["rankings"]
  end
  helper_method :character_rankings
end
