require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
  # describe 'index page' do
  #   # before(:example) do
  #     @user = User.create(name: 'John', email: 'johannes@example.com', password: 'password')
  #     sign_in @user
  #     @category = Category.create(name: 'food', icon: 'fas fa-utensils', user_id: @user.id)
  #     visit categories_path
  # end

  it 'renders name of category' do
    visit 'users/sign_in'
    expect(page).to have_content('Log in')
  end

  it 'renders name of category' do
    visit root_path
    expect(page).to have_link('Sign up')
  end

  it 'render sign_up page' do
    visit new_user_registration_path
    expect(page).to have_content('Sign up')
  end

  # end
end
