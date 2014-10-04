class VotesController < ApplicationController

  def create
    @hypos = Hypo.all
    hypo = Hypo.find(params[:hypo_id])
    vote = hypo.votes.new(user_id: session[:user_id], votable_id: hypo.id, votable_type: "Hypo", value: 1)
    if vote.save
      render 'hypos/index' and return
    else
      render 'hypos/index' and return
    end
  end

end
