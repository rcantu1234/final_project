# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# blackbeans = Car.create!({ name: 'BlackBeans',
#                                  description: 'For this recipe you will need a pressure cooker
#                                                                   and access to filtered water.',
#                                  image: 'http://upload.wikimedia.org/wikipedia/commons/a/a2/Black_beans.jpg',


tirepressure = Maintenance.create!({
                image: "http://www.carbibles.com/images/checkyourpressures.jpg",
                title: "CHECK YOUR TYRE PRESSURES",
                description: "Check your tyre pressures regularly - once a week is ideal. Bad tyre pressures can affect fuel economy, handling and comfort.
                It's easy to do and there is no excuse not to."
    })

treaddepth = Maintenance.create!({
                title: "CHECK YOUR TREAD DEPTH",
                description: "Bald, slick tyres might be good for motor racing but they're no good on the road.
                Most tyres come with tread wear bars built into them now - find one, examine it and if your tread is too low, replace your tyres.
                Four new tyres might seem expensive but they're cheaper than a fine or an accident."
    })

belts = Maintenance.create!({
                title: "CHECK YOUR BELTS",
                description: "At the front of your engine there will be a series of rubber drive belts that loop around various pulleys,
                driving everything from the alternator to the a/c compressor.
                Rubber perishes, more so in extreme conditions like those found in an operating engine bay.
                Get your timing belt and accessory drive belt checked every 25,000 miles,
                preferably replacing it every 50,000 miles."
    })
