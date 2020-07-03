module CommonTextBoxControls
  include Capybara::DSL

  def enter_text (locator,locator_type, text_string)
    case locator_type
    when 'css'
      find(:css, locator).set(text_string)
    when 'xpath'
      find(:xpath, locator).set(text_string)
    when ('name'||'id'||'link_text')
      fill_in locator, with: text_string
    else
      -1
    end
  end

  def clearText (locator,locator_type)
    case locator_type
    when 'css'
      find(:css, locator).set('')
    when 'xpath'
      find(:xpath, locator).set('')
    when ('name'||'id'||'link_text')
      fill_in locator, with: ""
    else
      -1
    end
  end

end