module ApplicationHelper
	def self.hilite?(strSort)
    (strSort == params[:sort])
  end
end
