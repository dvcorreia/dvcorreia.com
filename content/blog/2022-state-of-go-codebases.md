+++
title = "How we do Go applications in 2022"
date = "2023-02-26"
description = "For the last 2 years at WHERE IS, we have been building a real-time location platform in Golang. I will go through our taught process on how we approach and maintain our codebase."
categories = ["tech"]
tags = [
    "go",
    "codebase"
]
draft = true
+++

## Context

I'm 1 month away from my 2nd year at Wavecom :party_popper:.
I was fresh out of college and joined the company to help in the RFID and RTLS product solutions.

At the time, we add a few proof of concepts built on top of an old python 3.6 codebase, full of issues that may need a blog post of itself.
The team had 4 people: a project manager, product owner/software developer, solution engineer and me.
It felt closer to a startup than what I initially expected, which was great.
The incentives to improve the product were there.

A few months following me joining, we decided to incorporate Go in our codebase. We had to process an enormous amount of _BLE (bluetooth low energy)_ packets with low latency, and python would have not cut it.

```git
// git log --reverse

commit c7bb44fd92b138baa8c0a10cbe29d81355b90189
Author: Diogo Correia <dcorreia@wavecom.pt>
Date:   Thu Jul 1 18:49:52 2021 +0100

    first commit!
```

I was not unfamiliar with Go [^1], but I was far from being able to produce what I taught as _quality code_.

[^1]: In my master thesis I had built a crude [EPCIS 1.2](https://www.gs1.org/sites/default/files/docs/epc/EPCIS-Standard-1.2-r-2016-09-29.pdf) adapter, which converted JSON over HTTP request to the standard EPCIS SOAP+XML, and back. It enabled the React JS frontend to use JSON instead of XML.

It's now early 2023, and looking back we did great job. The code and organization is not the cleanest, but is __maintainable__.
If we had availability, we could improve everything about the code without issues.

We are in the mids of migrating our old product to a new, more maintainable platform and the backend is mostly written in Go [^2].
We had an hard time reaching this point, but I think it payed of.
We have learned and adapted things for the last year and a half, and we feel that we have something we can work with.

---

I will go over on how we go about keeping or codebase fresh and maintainable.
These are things that worked for us and not a guideline for doing things.
Approach things in sensible manner and take these ideias with you.
If you have any suggestion or question, please reach out to me, I will be happy to talk.

[^2]: We still use Python in integrations with client's platforms. This is mostly done by our Solution Engineers.


## Main source of truth

I think that function main should describe the recipe of code.
A recipe, by definition is: a set of instructions for preparing a particular dish, including a list of the ingredients required.
Main should be a set of instructions for preparing a particular software application, including a list of the dependencies required.

It may be me, being opinionated, but we have been doing this from the start with great results.
New team mates can at a glance understand the application.
It is one page with one function which describes how things are setup, and shutdown.

Go is such a simple language, with a small syntax footprint and great concurrency primitives.
Is amazing how Go manages to be simple in a word of complexity.
It's such be a great language to teach in schools.

Leet's look at an example: We have a service that is listening on a spectrum to retrieve earth satellite pictures.
How would _func main_ look like? Let's exercise it:

{{< highlight go >}}
func main() {
    log := logger.New()
}
{{< /highlight >}}

```go
func main() {
    log := logger.New()
}
```

| dsfs | sdfs | fsdfs |
|------|------|-------|
| fsd  | fs   | dfs   |
| sdfs | sdf  | fs    |


> Dorothy followed her through many of the beautiful rooms in her castle.