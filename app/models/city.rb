class City < ApplicationRecord
    has_many :neighborhoods
    has_many :listings, :through => :neighborhoods

    # def listings
    #     neighborhoods.map{|n| n.listings}
    # end

    # def neighborhoods
    #     Neighborhood.all.select{|n| n.city_id == self.id}
    # end
end
