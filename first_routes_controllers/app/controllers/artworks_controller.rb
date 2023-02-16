class ArtworksController < ApplicationController
    def index
        @artworks = Artwork.artworks_for_user_id(params[:user_id])
        render json: @artworks
    end

    def create
        @artwork = Artwork.new(strong_params)
        if @artwork.save
            render json: @artwork, status: 201
        else
            render json: @artwork.errors.full_messages, status: 422
        end
    end

    def show
        @artwork = Artwork.find(params[:id])

        render json: @artwork
    end

    def update
        @artwork = Artwork.find(params[:id])
        if @artwork.update(strong_params)
            redirect_to artwork_url(@artwork.id)
        else
            render json: @artwork.errors.full_messages, status: 403
        end


    end

    def destroy
        @artwork = Artwork.find(params[:id])
        if @artwork.destroy
            render json: "ARTWORK DESTROYED!!!"
        else
            render json: @artwork.errors.full_messages, status: 417
        end
    end

    private

    def strong_params 
        params.require(:artwork).permit(:artist_id, :title, :image_url)
    end
end