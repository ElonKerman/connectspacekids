LaunchInfo.destroy_all
li1 = LaunchInfo.new
li1.vehicle = "Falcon 9"
li1.location = "LC-39A or SLC-40"
li1.date_time = DateTime.parse("Thu, 17th Jan 2019")
li1.company = "Spacex"
li1.reflight = "no"
li1.landing = "yes,LZ-1"
li1.destination = "ISS"
li1.payload = "Dragon v2 crew"
li1.orbit = "LEO"
li1.description = "first crewed mission to the ISS from US soil since 2011"
li1.customer = "NASA"
li1.name = "SpX-DM2 (Crewed)"
li1.save

li2 = LaunchInfo.new
li2.vehicle = " Modified Falcon 9"
li2.location = "LC-39A or SLC-40"
li2.date_time = DateTime.parse("Tue, 1st Jan 2019")
li2.company = "Spacex"
li2.reflight = "maybe"
li2.landing = "maybe"
li2.destination = "n/a"
li2.payload = "modified Dragon v2 no crew"
li2.orbit = "suborbital"
li2.description = "In flight abort test of Dragon v2"
li2.customer = "Spacex"
li2.name = "Crew Dragon in-flight abort"
li2.save

puts "There are now #{LaunchInfo.count} launch_infos in the database"
