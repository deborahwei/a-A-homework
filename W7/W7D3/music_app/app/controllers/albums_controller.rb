class AlbumsController < ApplicationController

    before_action :require_logged_in

    def new 
        @band = Band.find_by(id: params[:band_id])
        @album = Album.new(band_id: params[:band_id])
        render :new 
    end

    def create 
        @album = Album.new(album_params)
        if @album.save
            redirect_to album_url(@album)
        else 
            render json: @album.errors.full_messages,  status: :unprocessable_entity
        end
    end

    def edit
        @album = Album.find_by(id: params[:id])
        render :edit
    end

    def update 
        @album = Album.find(params[:id])
        if @album.update(album_params)
            redirect_to album_url(@album)
        else
            render json: @album.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show 
        @album = Album.find(params[:id])
        render :show
    end

    def destroy
        @album = Album.find(params[:id])
        @album.destroy
        redirect_to albums_url
    end

    private 

    def album_params 
        params.require(:album).permit(:title, :band_id, :year, :live)
    end
end