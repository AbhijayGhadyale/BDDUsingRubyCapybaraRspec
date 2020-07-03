module CommonRadioButtonControls
  include Capybara::DSL

  def select_radio_button (locator, locator_type)
    case locator_type
    when 'css'
      find(:css, locator).click
    when 'xpath'
      find(:xpath, locator).click
    when ('name'||'id'||'link_text')
      find(locator).click
    else
      -1
    end
  end

end