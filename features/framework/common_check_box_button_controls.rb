module CommonCheckBoxControls
  include Capybara::DSL

  def select_check_box (locator, locator_type)
    case locator_type
    when 'css'
      find(:css, locator).click
    when 'xpath'
      find(:xpath, locator).click
    when ('name'||'id'||'link_text')
      page.choose(locator)
    else
      -1
    end
  end

  def select_check_box_by_value(checkbox_value)
    check(checkbox_value)
  end

  def unselect_check_box_by_value(checkbox_value)
    uncheck(checkbox_value)
  end

end

=begin
check('A Checkbox')
uncheck('A Checkbox')
=end