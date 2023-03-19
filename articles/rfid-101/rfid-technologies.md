---
title: "RFID 101: Technologies"
description: An overview of most widely used RFID technologies and use-cases for them. 
topic: rfid

draft: true
---



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