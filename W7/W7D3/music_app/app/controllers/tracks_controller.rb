class TracksController < ApplicationController

    before_action :require_logged_in

    def new 
        @album = Album.find(params[:album_id])
        @track = Track.new(album_id: params[:album_id])
        render :new 
    end

    def create 
        @track = Track.new(track_params)
        if @track.save
            redirect_to track_url(@track)
        else 
            render json: @track.errors.full_messages,  status: :unprocessable_entity
        end
    end

    def edit
        @track = Track.find_by(id: params[:id])
        render :edit
    end

    def update 
        @track = Track.find(params[:id])
        if @track.update(track_params)
            redirect_to track_url(@track)
        else
            render json: @track.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show 
        @track = Track.find(params[:id])
        render :show
    end

    def destroy
        @track = Track.find(params[:id])
        @track.destroy
        redirect_to tracks_url
    end

    private 

    def track_params 
        params.require(:track).permit(:title, :ord, :regular, :album_id, :lyrics)
    end
end