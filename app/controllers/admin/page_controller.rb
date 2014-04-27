class Admin::PageController < ApplicationController
	protect_from_forgery with: :exception
	
	
  before_action :authenticate_admin!

  	layout 'admin'
  	def index
    
  	end
  
end
