class CharacterSearchController < ApplicationController
  def index
    if params[:search]
      @character_data = Character.new.fetch_character(params[:search])
    end
  end
end
