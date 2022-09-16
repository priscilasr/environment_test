# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',
                        author: 'jk rowling',
                        published_date: '08/08/2021',
                        price: '20')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
  end

  it 'is not valid without a name' do
    subject.author = nil
  end

  it 'is not valid without a name' do
    subject.published_date = nil
  end

  it 'is not valid without a name' do
    subject.price = nil
  end

end