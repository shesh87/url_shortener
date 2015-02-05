class ShortenerController < ApplicationController

	def new
		@url = Url.new
	end

	def create
		@url = Url.new(url_params) 
		if @url.save
			flash[:short_url] = "http://localhost:3000/url/#{@url.id}"
			flash[:short_url_id] = @url.id
			redirect_to(url_path)
		else
			render "bad"
		end
	end
	
	def show
		@url = Url.find_by(id: flash[:short_url_id])
	end

	def redirect
		@rd = Url.find(params[:id])
		redirect_to("http://#{@rd.current_url}")
	end

	private
		def url_params
			params.require(:url).permit(:current_url)
		end
end
