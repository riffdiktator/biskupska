class Admin::PageController < ApplicationController
	protect_from_forgery with: :exception
	
	
  before_action :authenticate_admin!

  	layout 'admin'
  	def index
    	@pages = Page.all
  	end

  	def new

  	end

  	def create
		@page = Page.new(page_params)
	    @page.save
	    flash[:notice] = "Post successfully created"
	    redirect_to admin_page_index_path
  	end

  	private

  		def page_params
  			params.require(:page).permit(:title, :text, :in_menu)
  		end
  
end
