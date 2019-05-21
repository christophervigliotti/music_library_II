require 'rails_helper'

describe Album, type: :model do
  it 'creates an album' do
    album = Album.create(title: '1999', artist: 'Prince')
    expect(album.title).to eq('1999')
  end
end
