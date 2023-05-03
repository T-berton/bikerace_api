# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

r1= Rider.create(first_name: "Dustin",last_name:"Green",city: "Hickory Hills",state:"IL")
r2= Rider.create(first_name: "Jason",last_name:"Finn",city: "Huntington Beach",state:"CA")
r3= Rider.create(first_name: "Howard",last_name:"Thompson",city: "Hale",state:"MO")
r4= Rider.create(first_name: "Maggie",last_name:"Lantz",city: "Dublin",state:"OH")
r5= Rider.create(first_name: "Lawrence",last_name:"Duran",city: "Fort Myers",state:"FL")
r6= Rider.create(first_name: "Irene",last_name:"Molina",city: "Tucson",state:"AZ")
r7= Rider.create(first_name: "Nancy",last_name:"Garner",city: "Baltimore",state:"MD")
r8= Rider.create(first_name: "Tara",last_name:"Taylor",city: "Minneapolis",state:"MN")
r9= Rider.create(first_name: "Alejandro",last_name:"Smith",city: "Scarborough",state:"ME")
r10= Rider.create(first_name: "Tricia",last_name:"Renshaw",city: "Mystic",state:"CT")
r11= Rider.create(first_name: "Travis",last_name:"Cook",city: "Twin Lakes",state:"WI")
r12= Rider.create(first_name: "Joan",last_name:"Brooks",city: "Norfolk",state:"VA")
r13= Rider.create(first_name: "Joseph",last_name:"Rodgers",city: "Wayne",state:"NJ")
r14= Rider.create(first_name: "Matthew",last_name:"Gregson",city: "Brashear",state:"MO")
r15= Rider.create(first_name: "Katie",last_name:"Dunlap",city: "Marion",state:"VA")
r16= Rider.create(first_name: "Leo",last_name:"Howard",city: "Dallas",state:"TX")
r17= Rider.create(first_name: "Maria",last_name:"Baisden",city: "Raleigh",state:"NC")
r18= Rider.create(first_name: "Sandy",last_name:"Townsend",city: "Newport",state:"PA")
r19= Rider.create(first_name: "Melinda",last_name:"Stephenson",city: "Kahului",state:"HI")
r20= Rider.create(first_name: "Jason",last_name:"Nichols",city: "Alexandria",state:"VA")



Location.create!(rider_id: r1.id,latitude:40.00,longitude:-105.35)
l2= Location.create(rider_id: r2.id,latitude:39.95,longitude:-105.24)
l3= Location.create(rider_id: r3.id,latitude:40.06,longitude:-105.26)
l4= Location.create(rider_id: r4.id,latitude:40.03,longitude:-105.23)
l5= Location.create(rider_id: r5.id,latitude:40.04,longitude:-105.23)
l6= Location.create(rider_id: r6.id,latitude:39.96,longitude:-105.22)
l7= Location.create(rider_id: r7.id,latitude:39.98,longitude:-105.21)
l8= Location.create(rider_id: r8.id,latitude:40.00,longitude:-105.25)
l9= Location.create(rider_id: r9.id,latitude:40.02,longitude:-105.26)
l10= Location.create(rider_id: r10.id,latitude:40.02,longitude:-105.30)
l11= Location.create(rider_id: r11.id,latitude:40.01,longitude:-105.20)
l12= Location.create(rider_id: r12.id,latitude:39.98,longitude:-105.24)
l13= Location.create(rider_id: r13.id,latitude:39.99,longitude:-105.25)
l14= Location.create(rider_id: r14.id,latitude:40.01,longitude:-105.29)
l15= Location.create(rider_id: r15.id,latitude:39.97,longitude:-105.27)
l16= Location.create(rider_id: r16.id,latitude:39.97,longitude:-105.33)
l17= Location.create(rider_id: r17.id,latitude:40.00,longitude:-105.29)
l18= Location.create(rider_id: r18.id,latitude:40.05,longitude:-105.30)
l19= Location.create(rider_id: r19.id,latitude:39.99,longitude:-105.31)
l20= Location.create(rider_id: r20.id,latitude:40.01,longitude:-105.32)