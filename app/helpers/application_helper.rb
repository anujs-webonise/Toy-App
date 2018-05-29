module ApplicationHelper
	# Returns the full title on a per-page basis.
	def full_title(page_title='')
		base_title = APP_NAME
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	# Returns the active class if request and current path is equal
  def current_class?(current_path)
    return 'active' if request.path == current_path
  end
end

