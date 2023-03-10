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

The German aircraft force, *Luftwaffe*, observed that as pilots rolled their planes, it would change the radio signal reflected back. With this ingeniously simple maneuver, they were capable of discriminate allied aircrafts, being roughly the first RFID passive application [^2].

[^2]: D. M. Dobkin, The RF in RFID, Second Edition: UHF RFID in Practice, Second. USA: Newnes, 2012, isbn: 0-12-394583-6

It was soon later that Watson-Watt, under a British project, developed the first active RFID application to be used in IFF (Identification friend or foe) systems. An active RF transmitter was attached to British planes, which on receiving radar signals from base stations, broadcasted a signal identifying allied aircrafts [^3].

[^3]: The History of RFID Technology | RFID JOURNAL, [https://www.rfidjournal.com/the-history-of-rfid-technology](https://www.rfidjournal.com/the-history-of-rfid-technology).

{{< figure
    height="400"
    alt="'77 Squadron in the Air', 1941-1945"
    caption="'77 Squadron in the Air', 1941-1945"
    src="museums-victoria-oyGmigXV030-unsplash.jpg" >}}

The technology kept advancing through the 1950s and 1960s, mainly in the academic field, but with some private companies starting to commercialize anti-theft systems based on 1-bit transponders [^4].

[^4]: Before an item is sold, the bit is turned on. If someone tries to steal that object, gates at the doorway read the bit and respond with an alarm. If the item is sold, the bit is turned off at the point of sale. It's a simple inductive RC resonant circuit that detects transponders in field by changes in the reader coil voltage.

In the 1970s the first RFID patents were registered, namely, active tag with rewritable memory and a passive transponder for door lockers. It was during this time that the US National Laboratory of Los Alamos was commissioned, by the Energy Department, to develop a tracking system for nuclear materials. The system revolved around transponders in trucks that would transmit information to readers at the gates of secure facilities. The Agricultural Department also requested Los Alamos for an animal tracking system, which was designed in the UHF band with passive transponders, marking the beginning of the UHF RFID technology. These systems were also transposed by the same engineers to automated toll payment systems in the private industry [^5] [^6].

[^5]: J. Landt, The History of RFID, IEEE Potentials, vol. 24, no. 4, pp. 8–11, 2005.
[^6]: H. Casier, M. Steyaert, and A. Roermund, van, Eds., Analog Circuit Design : Robust Design, Sigma Delta Converters, RFID, English. Germany: Springer, 2011, isbn: 978-94-007-0390-2. doi: [10.1007/978- 94-007-0391-9](https://doi.org/10.1007/978-94-007-0391-9).

In the 1980s, the development of the personal computer and technology promises, fueled an upsurge in investment, with private industries wagering in RFID.
By the 1990s, deployments of RFID systems had grown significantly. The necessity of compatibility and interaction between proprietary systems rose, being established the first industry standards. 

The 2000s followed the same maturation process with slow adoption in the late part of the decade. 
Despite the interest presented by retail giants like Wal-Mart, and investment by the DOD, compromises created by the RFID industry did not justify the commitment to the technology. The high cost for investment, technical performance difficulties, conflicting standards, security issues and privacy concerns made the investment unappealing [^7]. 

[^7]: Computer Economics, [RFID Adoption Stalls: Executive Summary](https://www.computereconomics.com/article.cfm?id=1203).

Companies had to strangle RFID resources due to inexistent tools and complex implementations. Resources required to develop marketing and sales tools, which truly utilize the RFID infrastructure to increase revenue, had to be allocated to deploy RFID systems.
Devise economic strategies for suppliers to transit to RFID also seemed to be a problem, since many ordinary companies don't have RnD resources at all to begin with [^8].
Another big issue was the standardization of coding schemes in RF tags. The fight for dominance in the UHF RFID market led to multiple coding standards and protocols that made inter-operation among vendor and suppliers infeasible, if not impossible.

[^8]: S. Gaudin, [Some Suppliers Gain from Failed Wal-Mart](https://www.cio.com/article/2436434/some-suppliers-gain-from-failed-wal-mart-rfid-edict.html), Apr. 2008.

In the last decade, despite the advancements in the industry and adoption by big apparel retailers like Zara, Decathlon and Marks & Spencer [^9], there are issues that inhibit wide-scale adoption of UHF RFID. 

[^9]: RFID in Retail Apparel, [https://gaorfid.com/rfid-in-retail-apparel/](https://gaorfid.com/rfid-in-retail-apparel/).

These problems will be further discussed in next chapters.