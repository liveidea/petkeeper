require 'rails_helper'

feature "Checking my pets with login and pets" do
  background do
    u = User.create(:email => 'userwithpet@mail.com', :password => '12345678')
    Pet.create(name: "Bobik", age: "10", gender: "male", kind:"Dog", species: "Yorkshire", user: u)

    visit 'users/sign_in'
    within '.new_user' do
      fill_in 'Email', :with => 'userwithpet@mail.com'
      fill_in 'Password', :with => '12345678'
    end
    click_button 'Sign in'
  end

  # scenario "entering my pets list (NO PETS)" do
  #   visit 'users/sign_in'
  #   within '.new_user' do
  #     fill_in 'Email', :with => 'jessiedsd@petsitter.com'
  #     fill_in 'Password', :with => '12345678'
  #   end
  #   click_button 'Sign in'
  #   visit '/pets/my'
  #   expect(page).to have_content "У вас ще немає тваринок"
  # end

  scenario "entering my pets list" do
    visit '/pets/my'
    expect(page).to have_content "Мої улюбленці"
  end

  scenario "creating new pet" do
    visit '/pets/new'
    within '.new_pet' do
      fill_in 'Name', :with => 'Рекс'
      fill_in 'Age', :with => '5'
      fill_in 'Kind', :with => 'Кіт'
      fill_in 'Species', :with => 'Дворняжка'
      fill_in 'Description', :with => 'Кіт як кіт'
    end
    click_button 'Зареєструвати тваринку'
    expect(page).to have_content "Тваринку успішно створено!"
  end
end
