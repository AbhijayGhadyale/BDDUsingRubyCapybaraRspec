require_relative '../framework/common_text_box_controls.rb'
include CommonTextBoxControls

class LoginPageObjects
  class << self


    UsernameCSS = "input[name='username']"
    PasswordCSS = "input[name='password']"
    LoginButtonCSS = 'input[value="Log In"]'
    LoginErrorMessageCSS = 'p[class="error"]'

    UsernameName="username"

    def navigate_to_application
      visit ("/parabank/index.htm")
      Capybara.page.driver.browser.manage.window.maximize
    end

    def enter_Username usernameText

      #find(:css, UsernameCSS).set(usernameText)
      #CommonTextBoxControls.enterText UsernameCSS, 'css', usernameText
      CommonTextBoxControls.enter_text UsernameName,'name',usernameText
     end

    def enter_Password passwordText
      #find(:css,PasswordCSS).set(passwordText)
      CommonTextBoxControls.enter_text PasswordCSS, 'css', passwordText
    end

    def click_login
      find(:css, LoginButtonCSS).click
    end

    def verify_login_error_message messageText
      find(:css, LoginErrorMessageCSS, :text => messageText)
    end

    def verify_title_of_page pageTitleText
      expect(page).to have_title pageTitleText
    end
  end
end
