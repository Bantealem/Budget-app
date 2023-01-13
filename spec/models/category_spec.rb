require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user1 = User.create(name: 'John', email: 'recipe1@example.com',
                         password: 'password1',
                         password_confirmation: 'password1')
    @category = Category.create(name: 'Breakfast',

                                icon: 'https://www.flaticon.com/svg/static/icons/svg/2922/2922510.svg',
                                user_id: @user1.id)
  end

  it 'should have a name' do
    expect(@category.name).to eq('Breakfast')
  end

  it 'should have an icon' do
    expect(@category.icon).to eq('https://www.flaticon.com/svg/static/icons/svg/2922/2922510.svg')
  end
end
