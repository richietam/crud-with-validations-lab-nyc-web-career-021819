class SongsController < ApplicationController

  def index
    @songs = Song.all
    render :index
  end

  def show
    @song = Song.find(params[:id])
    render :show
  end

  def new
     @song = Song.new
    render :new
  end

  def create
    @song = Song.new(song_params)

    if @song.valid?
      @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
    render :edit
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  def delete
  end

  private

  def song_params
    params.require(:song).permit!
  end

end
