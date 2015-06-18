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
                # image: "http://www.carbibles.com/images/checkyourpressures.jpg",
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

fueleconomy = Maintenance.create!({
                title: "FUEL ECONOMY",
                description: "Check your tyre pressures regularly - once a week is ideal.
                Bad tyre pressures can affect fuel economy very noticeably.
                It's easy to do and there is no excuse not to. "
    })

oillevel = Maintenance.create!({
                image: "checkyouroil.jpg",
                title: "CHECKING YOUR OIL LEVEL",
                description: "This is something everyone can do - it's quick and easy and it'll tell you if your engine needs oil.
                If the oil is too high or too low, it can cause trouble for your engine.
                To check the oil, park on level ground and wait until the engine has cooled down after driving, then locate the dipstick.
                Pull it out and wipe it clean, then push it all the way back in until the top of it is seated properly in the dip tube again.
                Wait a moment then pull it out again. Check the level of the oil.
                If it's between the high and low marks, you're fine. (If it's too low, add a little.)
                The high and low marks can be denoted by two dots, an 'H' and 'L' or a shaded area on the dipstick.
                The photos below show a Honda dipstick which has the two dots.
                Why not just read the level first time around?
                The first time you pull the dipstick out, it will have oil all over it and it will be difficult to tell where the level is.
                That's why you need to wipe it on a rag to get a clean dipstick, then dip it back into the oil to get a good reading. "
    })

coolantlevel = Maintenance.create!({
                title: "CHECKING YOUR COOLANT LEVEL",
                description: "Again, something everyone can do.
                The coolant is the other thing your engine cannot go without.
                Every engine is different but if you check your handbook you should find where the coolant reservoir is.
                It will normally be bolted to one side of the engine bay or the other, and be a white semi-transparent bottle.
                Wait until your engine is cool and take a look at it - the outside should have 'low' and 'high' markings on it and the level of coolant inside should be between the two.
                Do not take the radiator cap off to check coolant levels. If the coolant system is still hot then it is still under pressure and the pressure release will burn you."
    })

batteryterminals = Maintenance.create!({
                image: "batteryterminals.jpg",
                title: "DISCONNECTING AND RECONNECTING YOUR BATTERY",
                description: "If you're going to do any work on your car involving the electrical system, disconnect the battery first.
                To do this, loosen the connector for the negative/ground terminal first, and wiggle the terminal cap off.
                Use a wire-tie or similar to tie the cable back out of the way.
                If you need to take the battery out, you can now take off the positive connector.
                Why negative then positive? If you disconnect the positive side of the battery first, the negative side is still connected to the entire car.
                If you drop a tool and it lands on the positive battery terminal and touches anything else on the car, you'll have an electrical short.
                By disconnecting the negative first, you're cutting off the return path for the current.
                Now, if a tool drops on to either of the battery terminals, it doesn't matter if it touches part of the chassis or not - there's no continuous path for the electrical current.
                Reconnecting your battery.
                Connect the positive terminal first, and the negative second - the reverse of removal, and for the same reasons.
                When you slip the negative connector on, there will be a spark as it gets close and makes contact with the negative battery terminal.
                Don't be afraid of this - it's nothing to worry about.
                Make sure the terminal caps are done up nice and tight."
    })

checkbatteryterminals = Maintenance.create!({
                title: "CHECK YOUR BATTERY TERMINALS",
                description: "Most modern cars run on a 12 volt negative ground electrical system.
                If your battery terminals or contacts aren't clean, you're making it more difficult for the current to pass around the electrical system.
                Remove the terminal caps as described above and clean each contact post with a wire brush to get a nice clean metal contact surface.
                Do the same to the terminal caps, then reattach them as described above."
    })

lights1 = Maintenance.create!({
                image: "holdbulbbybase.jpg",
                title: "ONE INDICATOR OR BLINKER IS FLASHING FASTER THAN THE OTHER",
                description: "When you indicate one way and the blinker flashes quicker than when you indicate the other way,
                it means one of the bulbs has blown.
                An auto parts store will be able to tell you what sort of bulb you need to replace it with and your manual should
                show you how to get at the indicator bulbs - they're different on every car."
    })

lights2 = Maintenance.create!({
                title: "DON'T TOUCH THE GLASS WHEN CHANGING HEADLIGHT BULBS",
                description: "Most headlight bulbs now are filled with halogen and have special coatings on the outside of the glass.
                If you pick the bulb up by the glass with your fingers, you will leave trace amounts of oil and grease on the glass.
                When the bulb is used, that area of the glass will get hotter than the rest and it will eventually cause the bulb to crack.
                When changing headlight bulbs, only hold the metal bulb holder at the base, or make sure you're wearing rubber
                surgical / mechanic's gloves (clean ones) if you're touching the glass."
    })

checkengine = Maintenance.create!({
                image: "checkenginelight.gif",
                title: "THE CHECK ENGINE LIGHT",
                description: "Every new car now comes with OBD-II - On Board Diagnostics 2. This is a fault-registering system connected to sensors all
                over the car, engine, fuel and emissions system. When the check engine light comes on, it can mean many things.
                There are something like 4,000 unique OBD2 codes that can be stored.
                Handheld OBD2 diagnostic tools can be plugged in to the OBD2 port which is normally under the dash on the driver's side.
                These tools can read out the fault code and/or reset the system to contain no codes. Codes are split into two categories - historical/inactive, and active.
                The historical codes are lists of things that have been detected in the past but are no longer an issue, whilst the active codes are things that are a problem right now.
                Codes are subdivided into B-codes (body), C-codes (chassis) and the biggest list of all - P-codes (powertrain).
                P0440 OBD-II code. This is the most common code you'll find and it's the first thing you should check.
                P0440 is the code for Evaporative Emission Control System Malfunction which covers a multitude of sins.
                The one thing it covers that you can check is your gas cap (petrol cap).
                Most new cars have a pressurised fuel system and vapour recovery loop.
                If you've filled up with petrol and not twisted the gas cap until it clicks, you've not sealed the fuel system.
                It won't pressurise and the OBD2 system will log a P0440 code.
                In fact, on a lot of cars, that code is so common they'll actually have some way of telling you to check the gas cap.
                In the Honda Element, for example, if a P0440 code is logged, the dash scrolls 'CHECK GAS CAP' across the odometer display.
                So if you get a check engine light, check the gas cap first and see if the light goes off.
                Note : even if the light does go off, the code will likely still be stored in the OBD system and will show up next time it is checked.
                It wasn't the gas cap. If tightening the gas cap didn't do it, you'll need to find someone with an OBD2 diagnostics tool or reader.
                Some garages will charge you just for plugging the device in and reading the code.
                If they do, walk away. They're ripping you off.
                Better to find a garage or mechanic that will read the code and actually give you a diagnosis rather than just making you pay to find out a number.
                Smaller garages and local mechanics will normally do this for you for a small fee, and being independent,
                the diagnosis won't be predicated on you buying some expensive parts from a corporate chain.
                If you're a do-it-yourself type used to working from shop manuals, then a lot of places that will give you the diagnostic code for free.
                In America specifically, the Schuck's chain do free diagnostics checks (Checker, Kragen, Murray's, Advance) as well as AutoZone. Drop in - don't phone up and ask.
                A lot of times if you phone up they'll tell you it's $40. If you just turn up, more often than not they'll do it for nothing.
                In the UK I'm not sure who does - if you know, drop me a line. The alternative, if you're into maintaining your own vehicles, is to buy a reader and do it yourself."
    })

serviceengine = Maintenance.create!({
                image: "serviceenginelight.gif",
                title: "THE SERVICE ENGINE LIGHT / MAINT REQD LIGHT",
                description: "This might indicate 'Service', 'Service Engine' or 'Maint Reqd'.
                It's an indicator that you're getting close to a scheduled maintenance interval.
                On some cars it's as simple as counting miles before it comes on, whilst on others it maps engine
                temperatures, oil temperatures, air temperatures and other indicators of probable stress to tell you
                when it might be time for new oil or a service. In most cars this can be overridden or reset by you, the owner.
                Your handbook will tell you if this is the case. If you take your car for a service, the garage should reset it for you.
                Typically this light will come on when you start your car, and then turn off again as part of the self-check.
                If it stays on for 10 seconds then turns off, it normally means you're within 500 miles of needing a service.
                If it flashes for 10 seconds, it normally means you've exceeded a recommended service interval."
    })

batterywarning = Maintenance.create!({
                image: "batterywarning.gif",
                title: "THE ELECTRICAL FAULT LIGHT",
                description: "This warning light is different in every car but normally it looks like a picture of a battery, similar to the picture on the left here.
                You'll see it come on and go off when you start your engine as part of the car's self-test, but if this light comes on and stays on,
                it means the electrical charging system is no longer working properly.
                Think of it like a cellphone battery. If the cellphone is plugged into the charger, you can use it indefinitely,
                but when you disconnect it from the charger, there's a limited amount of time before your battery runs out.
                It's exactly the same in your car, only bigger.
                Every car has an alternator - the charger - and a 12v battery used to supply power to the electrical system.
                If the alternator becomes faulty or the drive belt to it snaps, then it will not be able to do its job.
                The longer you drive, the more your car will use up the remaining juice in the battery and eventually the
                engine will die. This almost always requires a new or refurbished alternator."
    })

brakewarning1 = Maintenance.create!({
                image: "brakewarning1.jpg",
                title: "BRAKE WARNING LIGHT 1",
                description: "Most cars nowadays have a brake warning light on the dash.
                Its purpose is to alert you that something is wrong in the braking system somewhere.
                If it comes on, check your owner's manual to find out its meaning.
                The brake warning light doesn't have a standard meaning; it could be used for multiple purposes.
                For example, the same light may be used to show that the hand brake (parking brake for the Americans amongst you) is on.
                If that's the case and you're driving, you ought to have noticed the smell of burning brake dust by now.
                The light can also indicate that the fluid in the master cylinder is low.
                Each manufacturer has a different use and standard for this light.
                Which is nice. Because it would be such a drag if the same indicator meant the same thing in every vehicle."
    })

brakewarning2 = Maintenance.create!({
                image: "brakewarning2.jpg",
                title: "BRAKE WARNING LIGHT 2",
                description: "If you've got an ABS-equipped car, you also have a second light - the ABS light.
                If it comes on, get it seen to as soon as possible.
                It means the ABS computer has diagnosed that something is amiss in the system.
                It could be something as simple as dirt in one of the sensors, or something as costly as an entire ABS unit replacement.
                Either way, if that light is on, then you, my friend, have got 1970's brakes.
                It's important to note that this light normally comes on when you start the car and then switches off a few seconds later.
                If it blinks, throbs, flashes or in any other way draws your attention to itself, then take note.
                It's not doing that just to please itself. Compared to a steady light, a blinking ABS light normally indicates something more serious.
                In some cases it could be as bad as 'you have no brakes at all.'"
    })

coolantwarning = Maintenance.create!({
                image: "coolantwarninglight.jpg",
                title: "COOLANT WARNING LIGHT",
                description: "This is normally the coolant level warning light.
                If this comes on it means that the level of coolant in your radiator is low and needs topping up.
                DO NOT OPEN THE RADIATOR CAP WHEN THE ENGINE IS HOT!
                The coolant system is pressurised and it could easily release pressure and spray you with boiling coolant.
                Do it when the engine is cold. Top up the system with either a pre-mixed coolant bought from a shop, or with distilled water.
                Don't use tap water - the mineral deposits in it boil out in the cooling system and calcium gets depositted
                around the inside of the radiator making it less efficient (which will eventually cause it to fail).
                It's always best to use pre-mixed coolant, or to mix your own rather than using neat water.
                The coolant mixture behaves as an antifreeze in winter as well as a corrosion-inhibitor to stop your engine rusting from the inside out."
    })

oilpressure = Maintenance.create!({
                image: "oilpressurelight.jpg",
                title: "OIL WARNING LIGHT",
                description: "Typically this light will come on if your oil pressure is too low.
                Low oil pressure is serious and if you continue to drive with this light on,
                eventually your engine will die. Low oil pressure can be caused by a failed oil pump,
                a blocked oil filter or strainer in the sump, or by low oil levels - for example if your engine is burning oil.
                Either way, you need to get it fixed, and fast.
                Low oil pressure is A Bad Thing and your engine won't thank you for leaving this problem
                untreated."
    })

