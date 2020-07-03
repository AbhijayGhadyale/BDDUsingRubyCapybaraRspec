module CommonQueryingControls
  include Capybara::DSL

  def check_page_for_selector (locator, locator_type)
    case locator_type
    when 'css'
      page.has_css?(locator)
    when 'xpath'
      page.has_xpath?(locator)
    when ('name'||'id'||'link_text')
      page.choose(locator)
    else
      -1
    end
  end

  def check_page_for_content(content_string)
    page.has_content?(content_string)
  end

end



=begin
page.has_selector?('table tr')
page.has_selector?(:xpath, './/table/tr')

page.has_xpath?('.//table/tr')
page.has_css?('table tr.foo')
page.has_content?('foo')
=end