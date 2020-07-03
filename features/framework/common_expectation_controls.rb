module CommonExpectationControls
  include Capybara::DSL

  def expect_page_to_have_selector (locator,locator_type)
    case locator_type
    when 'css'
      expect(page).to have_selector(:css, locator)
    when 'xpath'
      expect(page).to have_selector(:xpath, locator)
    when ('name'||'id'||'link_text')
      expect(page).to have_selector(locator)
    else
      -1
    end
  end


  def expect_page_to_have_css_selector(css_locator)
    expect(page).to have_css(css_locator)
  end


  def expect_page_to_have_xpath_selector(xpath_locator)
    expect(page).to have_xpath(xpath_locator)
  end


  def expect_page_to_have_content(content_string)
    expect(page).to have_content(content_string)
  end

end


=begin
expect(page).to have_selector('table tr')
expect(page).to have_selector(:xpath, './/table/tr')

expect(page).to have_xpath('.//table/tr')
expect(page).to have_css('table tr.foo')
expect(page).to have_content('foo')
=end