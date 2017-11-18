class PoemsController < ApplicationController
  def index
    @poems = Poem.all
    render json: @poems
  end

  def show
    @poems = Poem.all
    render json: @poems
  end
end
