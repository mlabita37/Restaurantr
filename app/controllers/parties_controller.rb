class PartiesController < ApplicationController

  def index
    @parties = Party.all
  end

  def create
    party = Party.create(party_params)
    redirect_to '/parties'
  end

  def new
    @party = Party.new
  end

  def show
    @party = Party.find(params[:id])
  end

  def update
    party = Party.find(party_params)
  end

  def destroy
    Party.delete(params[:id])
    redirect_to parties_path
  end

  def pay
  party = Party.find(params[:id])
  party.update_attribute(:is_paid, "true")
  end

  def euro
  party = Party.find(params[:id])
  party.update({euro: true})
  redirect_to "/parties/#{party.id}"
  end

  def american
  party = Party.find(params[:id])
  party.update({euro: false})
  redirect_to "/parties/#{party.id}"
  end

  private
  def party_params
    parameters = params.require(:party).permit(:guest_total, :top_number)
  end

end
