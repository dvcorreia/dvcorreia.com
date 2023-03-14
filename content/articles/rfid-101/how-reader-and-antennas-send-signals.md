---
title: "RFID 101: how reader and antennas send signal for tags to ear"
date: 2022-08-10
description: How reader and antennas send signal for tags to ear.

draft: true
---


## Reader

A reader is a device that can read from and write data to compatible RFID tags. It is responsible for sending and receiving RF signals to and from tags.
If we strip down all the features modern readers offer, we can isolate three main components: RF front-end, processor, communication interface.

The RF front-end interfaces with the reader antenna. 
It is responsible for transmitting power and clock cycle via the antenna to tags in the reading zone, and demodulate RF signals received from tags to be further handled by the processor. 
Readers must adhere to RF modulation requirements and EIRP regulations if they want to be approved and commercialized. This fact promotes the implementation of the front-end by a dedicated transceiver microchip and complementary electronics, which is usually chosen. There are also efforts in implementing the RF front-end in FPGA, which might change this paradigm in the next few years [^1].

The processor is responsible for all logic necessary in the reader. It often comes with other complementary components like memory and dedicated IC for specific tasks. Readers differ in architecture design between manufacturers, but the processor must at least implement the reader protocol to communicate with compatible tags. This includes decoding and error checking of the analog signals from the RF front-end, a controller interface to allow external entities to communicate with it, to transfer stored data, issue commands, accept commands and control the reader functions.

Communication interface is the component that provides communication instruction to a reader which allows external entities to interact with it.
It usually comes inside microprocessors and microcontrollers ICs. It is usually seen in commercial readers as serial communication interface or ethernet.

Commercial readers come in a variety of types which are suited for different applications.
The most common are stationary readers. Also called, _fixed_ readers, they are what the name implies, used for making fixed reading zones. They also can be mounted on forklifts and inside of trucks.
Other types are handheld readers, for a portable reading device and RFID printers which are used to print smart labels.

## Antenna

A reader communicates with tags through its antenna. 
Antennas are responsible for converting guided CW (Continuous Waves) in radiating EMWs and vice-versa.
It will only be covered radiating antenna theory for it is what is necessary to follow this dissertation.

In handheld readers, the antenna is generally integrated into the device. In stationary readers is most commonly found as a separate device attached to an antenna port of the reader by means of a cable.
There are different groups of antenna designs: antennas composed of a wire, which encompass the dipole, monopole and loop antennas; constituted of an opening, like the horn and cavity backed slot antennas; and printed circuit antennas like path antennas, commonly used in UHF RFID.

Evaluating antennas for RFID systems can be done through the parameters specified by the manufacturer, a few rules of thumb and engineering sensibility.
At UHF we can control the direction of waves and other parameters, and thus improve the readability of tags.

### Radiation pattern

An important parameter in antenna selection is the radiation pattern. 
Radiation pattern is the mathematical description or representation of the radiation properties of the antenna as a function of space coordinates.
The radiation pattern illustrates the regions where the antenna's energy is most effective.
In RFID is usually called the footprint of the antenna and determines the read zone.
Manufacturers usually provide the radiation patterns for RFID antennas in the datasheet.

Different antenna designs radiate with different patterns. These radiation patterns are classified in three main classes: isotropic, directional and omnidirectional.
For UHF RFID, directional antennas are really useful since it is possible to maximize directivity, that is, how well the radiation emitted is concentrated in a single direction. This increases reading distances and defines boundaries in reading zones. UHF RFID directional antennas are commonly patch antennas, also called _microstrip_ or _planar antennas_. They consist of rectangular metal foil or a plate mounted on a substrate such as Teflon or FR-4 (_i.e._ woven fiberglass cloth with an epoxy resin binder).

Is also important, when designing RFID systems, to have notion of the deformations that occur in the radiation patterns.
_Multi-path_ phenomena - the reflection of EMW in RF-opaque objects which causes waves to be scattered and arrive back at the reader in different paths and times - results in _phase_ shifts leading to constructive and destructive interference.
This creates protrusions and dead zones that will inevitably exist in most UHF RFID and microwave systems deployments. 

### Gain

(TO REVIEW)
They gain parameter is also important when selecting an RFID antenna.
It characterizes the performance of the antenna by mathematically describing how well it converts input power into radio waves radiated in a specified direction. It relates directivity and efficiency.

### Polarization

Antennas radiate EMW into surrounding space.
Polarization is the direction of oscillation of the EMW and has a great importance in tag readability.

EMW behave similarly to a wave of water. When a wave from a source, like a boat, reaches a buoy, the buoy moves mostly up and down.
Analogously, EMW moves electrons in the plane perpendicular to the direction of propagation. The direction in which the field points, determines the polarization of the EMW.
Unlike water waves, EMW are not influenced by gravity, so the electric field can point in any direction in the plane perpendicular to the direction of propagation, and so have different polarizations [^2].

The main types of polarization are known as linear and circular. Both types derive from the elliptical polarization, being linear and circular special cases of such.

#### Linear polarization

Linear polarized antenna emanate EMW in a linear pattern, that is, emits EMW with only one field of energy.

These antennas have a narrower radiation beam with better directivity compared to circular polarized antennas. This results in longer reading distances and well-defined reading regions, which are essential to good RFID system design.

These advantages can sometimes fall short to the disadvantages. Linear antennas are sensitive to tag orientation with respect to its polarization direction. 
RFID tag antennas are usually dipoles constituted of narrow metal traces aligned in one direction. If the electric field is directed along the traces, it can push electrons back and forth inducing the voltage necessary to energize the tag IC. If the electric field is directed perpendicular to the trace axis, it moves electrons across the diameter of the trance, producing negligible current, insufficient to power the tag IC.
Linear antennas are generally used in applications where tag orientation is fixed and predictable, or in conjunction with other complementary linear antennas.

#### Circular polarization

Circular polarized antennas solve, to certain degree, the orientation dependence problem with detriment of reading distance and a wider radiation beam.
These antennas produce two energy fields that are equal in amplitude and magnitude, with a phase difference of $90^\circ$ between them. This results in the electric field vector to be seen as helix like trace, a circular motion propagating through space. 

Because the nature of circular polarized antennas, they are to a certain extent, unaffected by tag orientation.
A circularly polarized EMW interacts with the linear antenna of a tag, tilted at any angle within the plane perpendicular to the axis of propagation, but in every case only half the transmitted power can be received.
Good antenna design in tags can modestly improve energy harvesting performance, _e.g._ incorporate two dipole antennas on the tag directed orthogonally to one another or physically larger bow-tie antenna designs.

These antennas are widely used in passive UHF RFID, specially in RF environment with high degree of RF reflectance, like due to presence of metals.

[^1]: Hugo Manuel Oliveira de Miranda, «Sistemas RFID UHF», pt-PT, MSc Dissertation, Universidade de
Aveiro, Aveiro, 2015.
[^2]: D. M. Dobkin, The RF in RFID, Second Edition: UHF RFID in Practice, Second. USA: Newnes, 2012, isbn: 0-12-394583-6.