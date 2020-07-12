class ActorsController < ApplicationController
  before_action :set_movie
  before_action :set_actor, only: [:edit, :update, :destroy]

  def index
    @actors = Actor.all
  end

  def new
    @actor = @movie.actors.new
  end

  def edit
  end

  def create
    @actor = @movie.actors.new(actor_params)

    respond_to do |format|
      if @actor.save
        format.html { redirect_to movie_path(@movie), notice: 'Actor was successfully added.' }
        format.json { render :show, status: :created, location: @actor }
      else
        format.html { render :new }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @actor.update(actor_params)
        format.html { redirect_to @movie, notice: 'Actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor }
      else
        format.html { render :edit }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @actor.destroy
    respond_to do |format|
      format.html { redirect_to movie_url(@movie), notice: 'Actor was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = current_user.movies.find(params[:movie_id])
    end

    def set_actor
      @actor = @movie.actors.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:name)
    end
end
