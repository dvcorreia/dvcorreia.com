---
title: "RFID 101: how it goes through the air"
description: An overview of electro-magnetic and radio concepts.

draft: true
---

Before presenting the intrinsics around RFID (Radio Frequency Identification) system components, a basic expertise in EM concepts is paramount.
Designing well performant systems requires a good understanding of electromagnetism fundaments and its peculiarities.

Like other wireless technologies, RFID uses EMF (Electromagnetic Field) or EMW (Electromagnetic Waves) interface to transmit information back and forward between reader and transponder.
Engineers have to grasp how EMF and EMW behave within distance to the reader antenna, how materials in tagged objects can interfere with RF signals, how unaccounted poor RF environments can compromise deployment of RFID systems, to say a few.

An EMF is the phenomenon produced by moving electric charges. It can be described through Maxwell's equations and mathematical abstracted as a combination of an electric field and a magnetic field that interact with each other and their surroundings.

The behavior of the fields changes as the distance from the source increases and are usually defined as two main regions: near-field and *far-field*. These regions separate RFID technologies in two very concrete operational groups. In reality, boundaries are not precisely defined, since the regions change their behavior in a progressive manner. The rough discrimination between regions in RFID exist to separate mutual coupling and radiation based technologies. 

## Near-field

near-field manifests from the electric and magnetic fields near the charges and current that directly produced them. It is the region where phenomena like EM induction and electrostatic occur.
This field can be further split in two regions: reactive near-field and radiative near-field.

Is in the reactive region that near-field RFID technologies are defined for. It is the closest to the transmitting antenna and is characterized by non-radiative behaviors. In this region, if the energy is not absorbed by a receiver, self-capacitance and self-inductive effects cause the antenna to store energy very near its surface. When electrons from a nearby conductor are placed in this region, reactive near-field energy is transferred to them, resulting in an energy drain on the transmitter by a change in the impedance viewed by the reader [^1] [^2].

In the radiative near-field, *i.e.* Fresnel region, the back-coupling of the fields becomes out of phase with the antenna signal, and thus cannot efficiently return inductive or capacitive energy from antenna currents or charges.
In this region conductive objects, such as metal structures, can behave as antennas by inductively receiving and then "re-radiating" some of the energy [^3].

The power of the field differers between field components with the distance (*d*) from the antenna. The magnetic field strength is proportional to $1/d^3$ and the electric to $1/d^2$. The near-field components are quite powerful but usually only suited for close range RFID technologies due to the rapid fall-off with the distance [^2].

In the context of RFID technologies, only the reactive zone is considered when referring to the near-field region. The radiative zone is *ineffective* and rather unpredictable and usually not accounted referring to RFID.

## Far-field

The far-field region is the region where the EM field behaves as "normal" radiating field, composed of EM waves that propagate outwards, *i.e.* electromagnetic radiation.

EM waves are created as result of uniform vibrations between an electric field and a magnetic field. In other words, EM waves are composed of oscillating magnetic and electric fields. A change in one of the field components reflects an equal change of the other and one can not exist independently.
These waves are detached from any feedback from the moving charges that produced it. Means that, after the waves leave the transmitter, they are completely independent of both transmitter and receiver, as opposed to the phenomena in the near-field region.

In this region the radiation amplitude decreases $1/d$ as the distance ($d$) from the reader antenna increases, being the suitable option for RFID technologies requiring high reading distances (*e.g.* UHF RFID).

## Boundaries

The boundaries between these regions are characterized by locations where the activity of the associated field components are strongest. This does not mean that the other components aren't present, because they are. The transition between regions is progressive.

The near and far fields are roughly delimited by approximately one full wavelength of the RF wave emitted from a reader antenna.
This can be more precisely defined taking in account the transmitting antenna characteristics.

For antennas whose size is comparable to one wavelength or bigger (used in UHF RFID), the far-field boundary is delimited by the Fraunhofer distance, radial from the antenna. The Fraunhofer distance is described by $2D^2 / \lambda$, where $D$ is the largest dimension of the radiator and $\lambda$ the wavelength [^2].
A representation of the borders between regions can be seen in image bellow.

{{< figure 
    title="EM Field for antennas larger than the wavelength of the radiation it emits"
    alt="EM Field for antennas larger than the wavelength of the radiation it emits"
    caption="Peter R. Franchi et al., Public domain, via Wikimedia Commons"
    background="white" align="center"
    src="https://upload.wikimedia.org/wikipedia/commons/e/ec/FarNearFields-USP-4998112.svg" >}}


For small antennas, shorter than half of the wavelength of the emitting radiation, the near-field for RFID applications is usually upper limited by $\lambda / 2\pi = 0.159\lambda$ [^4].
Small antennas are used in LF and HF RFID technologies.
For these technologies, which depend on the near-field for mutual coupling, the limit of the reactive region is the theoretical limit for the read distance.
A delimitation of field regions for small antennas can be seen in figure bellow.

{{< figure 
    title="Fields for antennas equal to, or shorter than, one-half wavelength of the radiation they emit"
    alt="Fields for antennas equal to, or shorter than, one-half wavelength of the radiation they emit"
    caption="http://www.osha.gov/SLTC/radiofrequencyradiation/electromagnetic_fieldmemo/electromagnetic.html"
    background="white" align="center"
    src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Field_regions_for_typical_antennas_vector.svg/1170px-Field_regions_for_typical_antennas_vector.svg.png" >}}

[^1]: K. Finkenzeller, RFID Handbook: Fundamentals and Applications in Contactless Smart Cards and
Identification, Second. Wiley Publishing, 2003, isbn: 0-470-84402-7.
[^2]: C. A. Balanis, Antenna Theory: Analysis and Design. Wiley-Interscience, 2005.
[^3]: Electromagnetic Radiation: Field Memo | Occupational Safety and Health Administration, [https://www.osha.gov/radiofrequency-and-microwave-radiation/electromagnetic-field-memo](https://www.osha.gov/radiofrequency-and-microwave-radiation/electromagnetic-field-memo).
[^4]: P. Nikitin, K. Rao, and S. Lazar, «An Overview of near Field UHF RFID», ser. IEEE Int Conf RFID, Apr. 2007, pp. 167–174. doi: 10.1109/RFID.2007.346165.