class AlbumsController < ApplicationController
    before_action :set_album, only: [:show, :edit, :update, :destroy]
    
    def show
    end

    def new
        @band = Band.find(params[:band_id])
        @album = @band.albums.new
        render :new
    end

    def create
        @band = Band.find(params[:band_id])
        @album = @band.albums.new

        if @album.save
            redirect_to album_url(@album)
        else
            flash.now[:errors] = @album.errors.full_messages
            render :new 
        end
    end

    def edit
    end

    def update
        @band = Band.find(params[:band_id])
        
        if @album.update(album_params)
            redirect_to album_url(@album)
        else
            flash.now[:errors] = @album.errors.full_messages
            render :edit 
        end
    end

    def destroy
        @album.destroy
        redirect_to bands_url
    end

    private
    def album_params
        params.require(:album).permit(:title, :year, :is_live)
    end

    def set_album
        @album = Album.find(params[:id])
    end
end
