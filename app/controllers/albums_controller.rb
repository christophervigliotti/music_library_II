class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end
  def new
    @album = Album.new
  end
  def create
    if Album.create(album_params)
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
    @album = Album.find_by_id(:id)
  end

  private

  def album_params
    # filters out other params...params not specified will not be passed to the model
    params.require(:album).permit(:title, :artist)
  end
end
