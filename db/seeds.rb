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
