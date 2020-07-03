module CommonNavigationControls
  include Capybara::DSL

  def navigate_to_url(urlpathString)
    visit(urlpathString)
  end

end



=begin
check('A Checkbox')
uncheck('A Checkbox')
=end