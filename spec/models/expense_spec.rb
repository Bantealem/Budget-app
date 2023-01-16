require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:each) do
    @user1 = User.create(name: 'John', email: 'recipe1@example.com',
                         password: 'password1',
                         password_confirmation: 'password1')
    @category = Category.create(name: 'Breakfast',

                                icon: 'https://www.flaticon.com/svg/static/icons/svg/2922/2922510.svg',
                                user_id: @user1.id)
    @expense = Expense.create(name: 'Bread', amount: 2, user_id: @user1.id, category_ids: @category.id)
  end

  it 'should have a name' do
    expect(@expense.name).to eq('Bread')
  end
  it 'should have an amount' do
    expect(@expense.amount).to eq(2)
  end
end
