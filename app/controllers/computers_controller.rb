class ComputersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
  end
end
