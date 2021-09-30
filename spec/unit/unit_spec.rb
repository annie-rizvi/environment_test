#location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  #it 'is valid with valid attributes (title only)' do
  #  expect(subject).to be_valid
  #end 

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling')
  end

  #it 'is valid with valid attributes (title and author)' do
  # expect(subject).to be_valid
  #end 

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 35)
  end

  #it 'is valid with valid attributes (title, author, and price)' do
  #  expect(subject).to be_valid
  #end 

  it 'is not valid without an author' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'jk rowling', price: 35, publish_date: Date.new(2017, 11, 10))
  end

  it 'is valid with valid attributes (title, author, price, and publish date)' do
    expect(subject).to be_valid
  end 

  it 'is not valid without an author' do
    subject.publish_date = nil
    expect(subject).not_to be_valid
  end
end

