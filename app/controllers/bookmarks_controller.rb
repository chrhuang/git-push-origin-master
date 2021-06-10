class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie = Movie.find(params[:bookmark][:movie_id])
    @bookmark.list = @list
    # raise
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    list = bookmark.list
    Bookmark.find(params[:id]).destroy
    redirect_to list_path(list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
