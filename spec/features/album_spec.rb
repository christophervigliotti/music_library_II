require 'rails_helper'

describe Album, type: :feature do
  it 'visits the index page' do
    visit '/'
    expect(page.text).to include 'Albums'
  end
end
