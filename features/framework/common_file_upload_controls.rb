module CommonFileUploadControls
  include Capybara::DSL

  def upload_file(locator, locator_type, path_of_file)
    case locator_type
    when 'css'
      find(:css, locator ).set(path_of_file)
    when 'xpath'
      find(:xpath, locator ).set(path_of_file)
    when ('name' || 'id' || 'link_text')
      attach_file(locator, path_of_file)
    else
      -1
    end
  end

end



