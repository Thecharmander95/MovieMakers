class VideoscenesController < ApplicationController
  before_action :set_movie, excpet: [:destroy]
  before_action :set_videoscene, only: [:show, :destroy]

  def index
    @videoscenes = Videoscene.all
  end

  def new
    @videoscene = @movie.picturescenes.new
  end

  def create
    @videoscene = @movie.picturescenes.new(picturescene_params)

    respond_to do |format|
      if @videoscene.save
        format.html { redirect_to movie_path(@movie), notice: 'Picture was successfully added.' }
        format.json { render :show, status: :created, location: @videoscene }
      else
        format.html { render :new }
        format.json { render json: @videoscene.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @videoscene.update(videoscene_params)
        format.html { redirect_to @movie, notice: 'Picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @videoscene }
      else
        format.html { render :edit }
        format.json { render json: @videoscene.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @videoscene = @movie.videoscenes.find(params[:id])
    @movie = current_user.movies.find(params[:movie_id])
    @videoscene.destroy
    respond_to do |format|
      format.html { redirect_to movie_url(@movie), notice: 'Picture was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = current_user.movies.find(params[:movie_id])
    end

    def set_videoscene
      @videoscene = @movie.videoscenes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def videoscene_params
      params.require(:videoscene).permit(:name, :video)
    end
end
