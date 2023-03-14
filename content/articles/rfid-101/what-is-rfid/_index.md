---
title: "What is RFID"
description: A small overview of what is RFID and how it manifests in the real world everyday products. 
topic: rfid

weight: 10
draft: true
---

## What is RFID?

RFID (or radio frequency identification) is any technology that uses radio waves or electro-magnetic fields to identify and collect data from things. It is a purely wireless technology.

You see it everywhere: Apple pay and most credit cards use RFID to identify and authorize payments. Toll roads in most European countries have RFID systems to automatically charge customers.
Decathlon uses it to manage inventory and for automatic identification of items when you pay.

{{< figure
    height="300"
    alt="Contactless payment with an RFID wristband."
    caption="Contactless payment with an RFID wristband."
    src="intenza-fitness-ybL6getznP8-unsplash.jpg" >}}


Does this means that ultra wideband (like Apple's AirTag) or bluetooth are RFID technologies? Yes and No.
Even doe this technologies match what we defined as RFID, and are indeed RFID technologies, in the industry we narrow the nomenclature to a common set of technologies that fit in spectrum a little bit hard to define.
By the end of this series you understand what I mean with this.

## RFID System

A typical RFID system starts with a radio device called _tag_ or _transponder_. The tag is attached to the object that needs to be identified.
When such tag is presented in front of an antenna connected to a suitable RFID reader, the tag transmits data to the reader via the reader antenna. The reader then forwards the information through a communication channel to a software application running on a computer.

{{< figure
    height="150"
    alt="Typical RFID system"
    caption="Typical RFID system (from: K. Finkenzeller, RFID Handbook, isbn: 0-470-84402-7)."
    src="rfid-system.svg" >}}

You can clearly see this system in contactless payment systems.
The _tag_ is the credit card. It contains authorization credentials to allow you to pay with it. It may be hard to spot in your card, but in transparent cards you can see the coupling element, usually a coil, connected to some electronic chip which stores the credentials.

{{< figure
    width="50%"
    alt="Transparent credit card with contactless technology"
    caption="Transparent credit card with contactless technology. You can observe a coper wire coil which is connected to an hidden electronic chip."
    src="transparent-card-e1581345527451.jpg" >}}

When you place the card near that finicky spot in the payment terminal, you are in fact placing the card near where RFID antenna is present.
The reader then starts exchanging credentials with the card, which sends to the software application running in the terminal, that authorizes the payment.

{{< figure
    width="50%"
    alt="Contactless payment terminal"
    caption="Contactless payment terminal with an external antenna."
    src="clay-banks-E2HgkL3LaFE-unsplash.jpg" >}}

In the following posts I will go much deeper on how everything works.
