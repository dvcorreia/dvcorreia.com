---
title: "Introduction to Radio Frequency Identification (RFID)"
date: 2022-08-03
summary: 
description: Same as the summary

draft: true
weight: 1
---

## What is RFID?

RFID is an identification technology that uses radio waves or electro-magnetic fields to automatically identify physical objects and collect data about them.


## History

The concept of identification using RF (aka Radio Frequency) dates back to the late 1930s.
By this time, the primitive biplanes made of wood and fabric used in Word War I, had evolved to all-metal monoplanes. They were capable of carrying heavy quantities of explosives and travel at hundreds of kilometers per hour, making the conventional method of visual identification of incoming aircrafts obsolete.
To counteract this issue, nations invested in research and development that culminated in the development of the microwave radar.
By the time of the World War II, both fronts were using radar technologies to detect approaching planes.
Still, the problem of identifying allied aircrafts from enemie ones, remained [^1].

The German aircraft force, *Luftwaffe*, observed that as pilots rolled their planes, it would change the radio signal reflected back. With this ingeniously simple maneuver, they were capable of discriminate allied aircrafts, being roughly the first RFID (aka Radio Frequency Identification) passive application [^2].

It was soon later that Watson-Watt, under a British project, developed the first active RFID application to be used in IFF (aka Identification friend or foe) systems. An active RF transmitter was attached to British planes, which on receiving radar signals from base stations, broadcasted a signal identifying allied aircrafts [^3].

The technology kept advancing through the 1950s and 1960s, mainly in the academic field, but with some private companies starting to commercialize anti-theft systems based on 1-bit transponders [^4].

In the 1970s the first RFID patents were registered, namely, active tag with rewritable memory and a passive transponder for door lockers. It was during this time that the US National Laboratory of Los Alamos was commissioned, by the Energy Department, to develop a tracking system for nuclear materials. The system revolved around transponders in trucks that would transmit information to readers at the gates of secure facilities. The Agricultural Department also requested Los Alamos for an animal tracking system, which was designed in the UHF (aka Ultra-high frequency) band with passive transponders, marking the beginning of the UHF RFID technology. These systems were also transposed by the same engineers to automated toll payment systems in the private industry [^3] [^5] [^6].

In the 1980s, the development of the personal computer and technology promises, fueled an upsurge in investment, with private industries wagering in RFID.
By the 1990s, deployments of RFID systems had grown significantly. The necessity of compatibility and interaction between proprietary systems rose, being established the first industry standards. 

The 2000s followed the same maturation process with slow adoption in the late part of the decade. 
Despite the interest presented by retail giants like Wal-Mart, and investment by the DOD, compromises created by the RFID industry did not justify the commitment to the technology. The high cost for investment, technical performance difficulties, conflicting standards, security issues and privacy concerns made the investment unappealing [^7]. 

Companies had to strangle RFID resources due to inexistent tools and complex implementations. Resources required to develop marketing and sales tools, which truly utilize the RFID infrastructure to increase revenue, had to be allocated to deploy RFID systems.
Devise economic strategies for suppliers to transit to RFID also seemed to be a problem, since many ordinary companies don't have RnD resources at all to begin with [^8].
Another big issue was the standardization of coding schemes in RF tags. The fight for dominance in the UHF RFID market led to multiple coding standards and protocols that made inter-operation among vendor and suppliers infeasible, if not impossible.

In the last decade, despite the advancements in the industry and adoption by big apparel retailers like Zara, Decathlon and Marks & Spencer [^9], there are issues that inhibit wide-scale adoption of UHF RFID. These problems will be further discussed in next chapters.

[^1]: The attack at Pearl Harbor in 1941 was possible due to a mistaken assignment of incoming Japanese aircraft to an unrelated US bomber flight.
[^2]: D. M. Dobkin, The RF in RFID, Second Edition: UHF RFID in Practice, Second. USA: Newnes, 2012, isbn: 0-12-394583-6
[^3]: The History of RFID Technology | RFID JOURNAL, [https://www.rfidjournal.com/the-history-of-rfid-technology](https://www.rfidjournal.com/the-history-of-rfid-technology).
[^4]: a simple inductive RC resonant circuit that detects transponders in field by changes in the reader coil voltage.
[^5]: J. Landt, «The History of RFID», IEEE Potentials, vol. 24, no. 4, pp. 8–11, 2005.
[^6]: H. Casier, M. Steyaert, and A. Roermund, van, Eds., Analog Circuit Design : Robust Design, Sigma Delta Converters, RFID, English. Germany: Springer, 2011, isbn: 978-94-007-0390-2. doi: [10.1007/978- 94-007-0391-9](https://doi.org/10.1007/978-94-007-0391-9).
[^7]: RFID Adoption Stalls: Executive Summary | Computer Economics – for IT Metrics, Ratios, Bench- marks, and Research Advisories for IT Management, [https://www.computereconomics.com/article.cfm?id=1203](https://www.computereconomics.com/article.cfm?id=1203).
[^8]: S. Gaudin, Some Suppliers Gain from Failed Wal-Mart RFID Edict, en, [https://www.cio.com/article/2436434/some-suppliers-gain-from-failed-wal-mart-rfid-edict.html](https://www.cio.com/article/2436434/some-suppliers-gain-from-failed-wal-mart-rfid-edict.html), Apr. 2008.
[^9]: RFID in Retail Apparel, en-US, [https://gaorfid.com/rfid-in-retail-apparel/](https://gaorfid.com/rfid-in-retail-apparel/).

## RFID System

Generally, RFID solutions start with a radio device called tag or transponder. The tag is attached to the object that needs to be identified. When such a object is presented in front of an antenna connected to a suitable RFID reader, the tag transmits data to the reader via the reader antenna. The reader then forwards the information through a communication channel to a software application running on a computer.

{{< figure 
    title="Typical RFID System"
    alt="Typical RFID System"
    caption="K. Finkenzeller, RFID Handbook: Fundamentals and Applications in Contactless Smart Cards and Identification, Second. Wiley Publishing, 2003, isbn: 0-470-84402-7."
    background="white" align="center"
    src="rfid_system.svg" >}}

### Components

An RFID system is a collection of components that implement an RFID solution [^11].
Different references present different descriptions of RFID systems. Many specify where and which components should be implemented.
The fact is, depending on the use case and requirements, these components can be implemented in different physical places or not implemented at all. With the current paradigm of IOT, machine learning and cloud computing, the discrimination of these components is even more difficult to establish. It is naive and intricate to predict what RFID system architecture will be like in the next few years.

The component description of RFID systems can be simplified to three physical blocks: __Tag__ (or transponder) which is attached to the physical object to be identified, and is responsible for storing and transmitting appropriate data about the object; __Reader__ and __Reader antenna__ which interacts with transponders to read and write data; and __Back-end system__ which encompasses all kinds of hardware and software components that are separated from the reader and support back-end infrastructures and business logic of a system.

From these, all components described in the literature can be specified and clearly added to one of the blocks.
Other prevalent components used in RFID systems are:


- __Controller__ is an interface that allows an external entity to communicate with and control the reader's functions and devices connected to it.
- __Sensor, actuator and annunciator__ are optional components used for external input and output of the system.
- __Client Applications__ is a term for all hardware and software components that are separated from the reader device (e.g. middleware, point-of-sale terminals, etc.)
- __Communication infrastructure__ is the wired and/or wireless network, or serial connection infrastructure needed to connect the previously listed components


[^10]: K. Finkenzeller, RFID Handbook: Fundamentals and Applications in Contactless Smart Cards and
Identification, Second. Wiley Publishing, 2003, isbn: 0-470-84402-7.
[^11]: S. Lahiri, RFID Sourcebook. IBM Press, 2005, isbn: 0-13-185137-3.


## RFID Technologies

When categorizing systems, the main aspect that defines RFID technologies is the operating frequency.
In the previous sections we noticed a clear relation between operating frequency, through the wavelength, and system specifications like reading distance and data transfer speeds.
So, it is no accident that this spontaneous categorization happened. RFID technologies tend to mature in a very clear path, being encompassed under use case specific standards with fixed operating frequencies carefully assigned by regulatory RF authorities in each country. 
It is indeed a useful classification method to summarize a set of specifications that usually need to be established a priori in RFID system design.

Being so, it is common in RFID slang to name systems by the frequency band they operate in.
There are four preeminent frequency groups: LF, HF, UHF and Microwave. UHF RFID technologies will not be discussed, being in early phases of technological development.
Each of the frequency groups presents characteristics inherent to their physical limitations that should be considered when choosing a technology.

### LF

LF usually operates in the 125KHz to 134KHz frequency range, using passive tags through inductive coupling. Inherently, it has slow read speed and the reading range is limited to around 0.5m. Despite the drawbacks, they have good behavior in metals and liquids and are the most mature technology, probably having the largest installed based system.
It is widely used in animal identification (ISO 11784/5 [^12] [^13], ISO 14223 [^14]), access control, logistics and data collection [^15], and automotive industry, in car ignition keys, to say a few.

### HF

HF operates mostly around the 13.54MHz frequency band. In same manner as LF, it uses inductive coupling. The higher operating frequency allows faster data read speeds while maintaining semi-decent behavior in metals and liquids.
Widely used in smart cards [^16] [^17] for all kinds of applications and is the basis of NFC technology [^18] [^19]. NFC has been receiving a lot of attention. It is a global communication standard with a mature market (being roughly in any smartphone nowadays). This promoted big companies to invest in it, which began a wide scale manufacturing, resulting in the reduction of tag price (0.35€ - 10.00€ per tag) and increase in system deployments.

### UHF

UHF operates in the band of 315MHz to 433MHz using active tags [^20], and 860MHz to 956MHz using passive ones [^21]. It is known for the promises it brings to SCM and logistics, being a cheap and affordable technology to wirelessly identify and track every item. It is mainly used in item tracking, but it can be adjusted for all kinds of applications. It uses backscatter coupling to transmit data between reader and tag. These frequencies present some drawbacks: poor behavior on liquid and metals is a big problem with passive tags; the allocation of the RF spectrum differs between countries being a huge problem for global deployments. This thematic will be further discussed in the next chapter of this series.

### Microwave

Microwave typically operates at 2.45GHz [^22] (5.8GHz ISO standard was withdrawn), also called _Industry, Scientific, and Medical (ISM)_ band, accepted globally. Uses backscatter coupling with passive, semi-passive and active tags. It performs very poorly in the presence of metals and liquids.

## RF Material Performance

RFID technologies, operating in the different frequencies, perform differently in the presence of distinct materials.
Material can be: RF-lucent, in that they are translucent to EMW; RF-opaque, where EMF can not penetrate the material; and RF-absorbent, in that it absorbs part of the EMF energy.
Concise information on RF properties in different materials is presented next.

| **Material**              | **LF** | **HF** | **UHF**   | **Microwave** |
| ------------------------- | ------ | ------ | --------- | ------------- |
| **Clothing**              | lucent | lucent | lucent    | lucent        |
| **Dry wood**              | lucent | lucent | lucent    | absorbent     |
| **Graphite**              | lucent | lucent | opaque    | opaque        |
| **Liquids\***  | lucent | lucent | absorbent | absorbent     |
| **Metals**                | lucent | lucent | opaque    | opaque        |
| **Motor oil**             | lucent | lucent | lucent    | lucent        |
| **Paper products**        | lucent | lucent | lucent    | lucent        |
| **Plastics\*** | lucent | lucent | lucent    | lucent        |
| **Shampoo**               | lucent | lucent | absorbent | absorbent     |
| **Water**                 | lucent | lucent | absorbent | absorbent     |
| **Wet wood**              | lucent | lucent | absorbent | absorbent     |

There is a big market around single purpose tags for materials with poor RF performance. 
An informed decision must be made when selecting tags for systems dealing with materials portraying these characteristics.


[^12]: [ISO 11784:1996](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/02/58/25881.html).
[^13]: [ISO 11785:1996](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/01/99/19982.html).
[^14]: [ISO 14223-3:2018](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/05/96/59602.html).
[^15]: [ISO/IEC 18000-2:2009](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/04/61/46146.html).
[^16]: [ISO/IEC 15693-2:2019](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/07/36/73601.html).
[^17]: [MIFARE](https://www.mifare.net/en/).
[^18]: [ISO/IEC 14443-4:2018](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/07/35/73599.html).
[^19]: [ISO/IEC 18000-3:2010](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/05/34/53424.html).
[^20]: [ISO/IEC 18000-7:2014](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/05/73/57336.html).
[^21]: [ISO/IEC 18000-6:2010](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/04/61/46149.html).
[^22]: [ISO/IEC 18000-4:2015](https://www.iso.org/cms/render/live/en/sites/isoorg/contents/data/standard/06/25/62539.html).