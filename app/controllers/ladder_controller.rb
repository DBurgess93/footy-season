class LadderController < ApplicationController
  def index
    @teams = Team.order(:ladder_position)
  end
end
