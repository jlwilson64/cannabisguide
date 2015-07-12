module ApplicationHelper
	def title(page_title)
   	content_for(:pagetitle) { page_title + ' | Seattle Cannabis Guide ' }
	end
end
