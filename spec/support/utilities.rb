def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Rails Tutorial App"
  if page_title.empty?
  	base_title
  else
  	"#{base_title} | #{page_title}"
  end
end