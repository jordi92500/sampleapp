module ApplicationHelper
	
	def full_title(page_title='')
		base_title='RoR Sample App'
		if page_title.empty?
			base_title
		else
			base_title= "#{page_title} | #{base_title}"
		end
	end
	
	def redirect
		redirect_to home_url
	end
end
