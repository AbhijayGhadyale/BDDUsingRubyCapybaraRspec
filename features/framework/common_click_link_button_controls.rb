module CommonClickControls
  include Capybara::DSL

  def click_on_link (locator, locatorType)
    case locator_type
    when 'css'
      find(:css, locator).click
    when 'xpath'
      find(:xpath, locator).click
    when ('link_text'||id)
      click_link(locator)
    else
      -1
    end
  end

  def click_on_button (locator, locator_type)
    case locator_type
    when 'css'
      find(:css, locator).click
    when 'xpath'
      find(:xpath, locator).click
    when ('id')
      click_link(locator)
    else
      -1
    end
  end

  def click_on_button_by_balue (button_value)
     click_button(button_value)
  end

end

=begin
click_link('id-of-link')
click_link('Link Text')
click_button('Save')
click_on('Link Text') # clicks on either links or buttons
click_on('Button Value')
=end