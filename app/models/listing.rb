class Listing < ApplicationRecord
    belongs_to :neighborhood

    belongs_to :host, :class_name => "User"
    has_many :guests, through: :reservations#, :foreign_key => 'guest_id'

    has_many :reservations

    has_many :reviews, through: :reservations

end
# it 'knows about all of its guests' do
#     expect(listing.guests).to include(logan)
#   end

# it 'belongs to a neighborhood' do
#     expect(listing.neighborhood.name).to eq("Fi Di")
#   end

# it 'belongs to a host' do
#     expect(listing.host.name).to eq("Amanda")
#   end