require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
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

  it 'renders new_user_registration_path' do
    visit new_user_registration_path
    expect(page).to have_content('Sign up')
  end

  it 'renders user_session_path' do
    visit user_session_path
    expect(page).to have_content('Log in')
  end

  it 'renders new_user_session_path' do
    visit new_user_session_path
    expect(page).to have_content('Log in')
  end

  it 'renders new_user_password_path' do
    visit new_user_password_path
    expect(page).to have_content('Forgot your password?')
  end

end
