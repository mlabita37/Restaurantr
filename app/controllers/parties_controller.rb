class PartiesController < ApplicationController

  def index
    @parties = Party.new
  end

  def create
    party = Party.create(party_params)
    redirect_to new_party_path
  end

  def new
    @party = Party.new
  end

  def update
    party = Party.find(party_params)
  end


  private
  def party_params
    parameters = params.require(:party).permit(:guest_total, :top_number)
  end

end
