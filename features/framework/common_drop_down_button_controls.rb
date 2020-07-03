module CommonDropdownControls
  include Capybara::DSL

  def select_text_from_dropdown (locator, locator_type, dropdown_text)
    case locator_type
    when 'css'
      find(:css, locator).find(:option, dropdown_text).select_option
    when 'xpath'
      find(:xpath, locator).find(:option, dropdown_text).select_option
    when ('name' || 'id' || 'link_text')
      find(locator).find(:option, dropdown_text).select_option
    else
      -1
    end
  end

  def selectTextFromDropDownByValue (dropdown_element_value, dropdown_text)
    select(dropdown_text, from: dropdown_element_value)
  end

end


# select('Option', from: 'Select Box')