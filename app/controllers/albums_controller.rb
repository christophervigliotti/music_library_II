class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  def create
    if Album.create(album_params)
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
    @album = Album.find(params[:id])
  end
  def new
    @album = Album.new
  end
  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def album_params
    # filters out other params...params not specified will not be passed to the model
    params.require(:album).permit(:title, :artist)
  end
end
