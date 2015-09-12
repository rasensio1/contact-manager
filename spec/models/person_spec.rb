require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'is invalid withot a first name' do
    person = Person.new(first_name: nil)
    expect(person).not_to be_valid
  end

  it 'is invalid withot a last name' do
    person = Person.new(first_name: "ryan", last_name: nil)
    expect(person).not_to be_valid
  end

end
