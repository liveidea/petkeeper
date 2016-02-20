require "rails_helper"

feature 'Signing up' do
  scenario 'Signing up with password confirmation' do
    visit '/users/sign_up'
    within '.new_user' do
      fill_in 'Email', :with => 'new_user@email.com'
      fill_in 'Password', :with => '12345678'
      fill_in 'Password confirmation', :with => '12345678'
    end
    click_button 'Sign up'
    expect(page).to have_content 'hello'
  end

  scenario 'Signing up without password confirmation' do
    visit '/users/sign_up'
    within '.new_user' do
      fill_in 'Email', :with => 'new_user@email.com'
      fill_in 'Password', :with => '12345678'
    end
    click_button 'Sign up'
    expect(page).to have_content "Password confirmation doesn't match Password"
  end
end



feature "Signing in" do
  background do
    User.create!(:email => 'user@example.com', :password => '12345678')
  end

  scenario "Signing in with correct credentials" do
    visit '/users/sign_in'
    within '.new_user' do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => '12345678'
    end
    click_button 'Sign in'
    expect(page).to have_content "hello"
  end

end
