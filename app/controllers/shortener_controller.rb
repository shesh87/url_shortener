class ShortenerController < ApplicationController

	def new
		@url = Url.new
	end

	def create
		@url = Url.new(url_params) 
		if @url.save
			redirect_to(url_path(@url))
		else
			render "bad"
		end
	end
	
	def show
		@url = Url.new(params[:id])
	end

	def redirect
		redirect_to(url_path(params[:id]))
	end

	private
		def url_params
			params.require(:url).permit(:current_url)
		end
end
