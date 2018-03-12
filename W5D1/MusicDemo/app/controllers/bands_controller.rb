class BandsController < ApplicationController

	def index
		@bands = Band.all
		render :index
	end

	def new
		render :new
	end

	def create
		@band = Band.new(band_params)

		if @band.save
			redirect_to bands_url
		end

	end


	private

	def band_params
		params.require(:band).permit(:name)
	end
end
