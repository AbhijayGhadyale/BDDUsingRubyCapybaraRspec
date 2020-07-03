module CommonFindingControls
  include Capybara::DSL

  def get_value (locator, locator_type)
    case locator_type
    when 'css'
      return find_field(:css,locator).value
    when 'xpath'
      return find_field(:xpath,locator).value
    when ('name'||'id'||'link_text')
      return find_field(locator).value
    else
      return -1
    end
  end

end

=begin
find_field('First Name').value
find_field(id: 'my_field').value
find_link('Hello', :visible => :all).visible?
find_link(class: ['some_class', 'some_other_class'], :visible => :all).visible?

find_button('Send').click
find_button(value: '1234').click

find(:xpath, ".//table/tr").click
find("#overlay").find("h1").click
all('a').each { |a| a[:href] }
=end