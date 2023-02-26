---
title: "UHF RFID Series: Introduction"
date: 2022-08-03
description: Technical introductions to UHF RFID can be daunting. In this blog series I will make a complete introduction to UHF RFID technology and establish a base level for you to try and explore this technology.

draft: true
weight: 1
--- 

## What is RFID?

RFID (or radio identification) is any technology that uses radio waves or electro-magnetic fields to identify and collect data from things.
You see it everywhere: 

- Apple pay, Google pay and most credit cards use RFID to identify and authorize payments.
- Toll roads in most European countries have RFID systems to automatically charge customers.
- Building and hotels access cards.

{{< figure
    height="300"
    alt="RFID payment with American Express creditcard through Apple Pay"
    caption="RFID payment with American Express creditcard through Apple Pay"
    src="cardmapr-nl-XH2JFgT4Abc-unsplash.jpg" >}}


UHF RFID is a specific subgroup of this technology, that shows a few characteristics that are really appealing for certain applications. We will dive deeper on this matter in latter chapters. For now lets understand its origins and how was adapter over the years.

## History

The concept of identifying things using RF (Radio Frequency) dates back to the late 1930s.
By this time, the primitive biplanes made of wood and fabric used in Word War I, had evolved to all-metal monoplanes. They were capable of carrying heavy quantities of explosives and travel at hundreds of kilometers per hour, making the conventional method of visual identification of incoming aircrafts obsolete.
To counteract this issue, nations invested in research and development that culminated in the development of the microwave radar.

By the time of the World War II, both fronts were using radar technologies to detect approaching planes. Still, the real problem was discerning allied aircrafts from enemy ones [^1].

[^1]: The attack at Pearl Harbor in 1941 was possible due to a mistaken assignment of incoming Japanese aircraft to an unrelated US bomber flight.

The German aircraft force, *Luftwaffe*, observed that as pilots rolled their planes, it would change the radio signal reflected back. With this ingeniously simple maneuver, they were capable of discriminate allied aircrafts, being roughly the first RFID passive application.

It was soon later that Watson-Watt, under a British project, developed the first active RFID application to be used in IFF (Identification friend or foe) systems. An active RF transmitter was attached to British planes, which on receiving radar signals from base stations, broadcasted a signal identifying allied aircrafts.

{{< figure
    height="400"
    alt="'77 Squadron in the Air', 1941-1945"
    caption="'77 Squadron in the Air', 1941-1945"
    src="museums-victoria-oyGmigXV030-unsplash.jpg" >}}

The technology kept advancing through the 1950s and 1960s, mainly in the academic field, but with some private companies starting to commercialize anti-theft systems based on 1-bit transponders [^2].

[^2]: Before an item is sold, the bit is turned on. If someone tries to steal that object, gates at the doorway read the bit and respond with an alarm. If the item is sold, the bit is turned off at the point of sale.

In the 1970s the first RFID patents were registered, namely, active tag with rewritable memory and a passive transponder for door lockers. It was during this time that the US National Laboratory of Los Alamos was commissioned, by the Energy Department, to develop a tracking system for nuclear materials. The system revolved around transponders in trucks that would transmit information to readers at the gates of secure facilities. The Agricultural Department also requested Los Alamos for an animal tracking system, which was designed in the UHF (Ultra-high frequency) band with passive transponders, marking the beginning of the UHF RFID technology. These systems were also transposed by the same engineers to automated toll payment systems in the private industry.
