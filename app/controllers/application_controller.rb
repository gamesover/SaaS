class ApplicationController < ActionController::Base
  protect_from_forgery
	def hilite?(strSort)
    (strSort == params[:sort])
  end
end
