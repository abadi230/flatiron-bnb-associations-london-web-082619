nyc = City.create(name: 'NYC')
new_york_city = City.create(name: 'NYC2') 


user = User.create(name: "user")
amanda = User.create(name: "Amanda") 
logan = User.create(name: "Logan") 
katie = User.create(name: "Katie")


fidi = Neighborhood.create(name: 'Fi Di', city: nyc)
financial_district = Neighborhood.create(name: 'Fi Di', city: new_york_city) 
green_point = Neighborhood.create(name: 'Green Point', city: nyc) 

listing = Listing.create(
    address: '123 Main Street',
    listing_type: "private room",
    title: "Beautiful Apartment on Main Street",
    description: "My apartment is great. there's a bedroom. close to subway....blah blah",
    price: 50.00,
    neighborhood: fidi,
    host: user
  )
  
  listing2 = 
    Listing.create(
      address: '123 Main Street',
      listing_type: "private room",
      title: "Beautiful Apartment on Main Street",
      description: "My apartment is great. there's a bedroom. close to subway....blah blah",
      price: 50.00,
      neighborhood: financial_district,
      host: amanda
    )
    
    listing3 = Listing.create(
        address: '6 Maple Street',
        listing_type: "shared room",
        title: "Shared room in apartment",
        description: "share a room with me because I'm poor",
        price: 15.00,
        neighborhood: green_point,
        host: katie
      )

    
    reservation = Reservation.create(
          checkin: '2014-04-25',
          checkout: '2014-04-30',
          listing: listing,
          guest: logan
        )
      
      review = Review.create(
          description: "This place was great!",
          rating: 5,
          guest: logan,
          reservation: reservation
        )