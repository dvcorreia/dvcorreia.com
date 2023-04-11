+++
title = "Organizing code by teams sucks"
date = "2023-02-10"
description = "Toughs about how everything is not that different and why we should strive for value and transparency as a state of people"
tags = [
    "code",
    "teams"
]
draft = true
+++

> Disclaimer: this post shares my own personal opinion and does not
> mirror the opinion or case of my employer.

For the most time, I've seen many codebases:

Code by two people in University: sometimes crafted, sometimes not. Poor quality and zero sense
of structure. An enormous presence of OOP. It was it or miss (mostly miss).

Code by a single guy in a internal startup: Old and unmaintained, but in production. 2 years between features and seeing the code twice. Python 2.6 talk to a java8 daemon with no logs, through a remote procedure call framework from 2009. Py4J may have been felt the bomb at the time, check these first git logs.

```git
commit bf853cff43252fffced9d0ec00a2bc1c4a004c98
Author: Barthelemy Dagenais <bart@cs.mcgill.ca>
Date:   Fri Dec 4 13:49:44 2009 +0000

commit 30340687a715656fc2274ad7f3c825d466440cba
Author: Barthelemy Dagenais <bart@cs.mcgill.ca>
Date:   Fri Dec 4 13:52:17 2009 +0000

    Initial import.

commit ec7fb5c338c73cd53a1188520fcb83019e3e4e37
Author: Barthelemy Dagenais <bart@cs.mcgill.ca>
Date:   Fri Dec 4 13:53:40 2009 +0000

    Initial import.

commit c7ab76e7f52c706a6f9b36699e6acce9ad815370
Author: Barthelemy Dagenais <bart@cs.mcgill.ca>
Date:   Fri Dec 4 13:54:51 2009 +0000

    Initial import.

commit 247f8d3c91a1de8928961188d96439374fe11a93
Author: Barthelemy Dagenais <bart@cs.mcgill.ca>
Date:   Fri Dec 4 13:55:49 2009 +0000

    Initial import.

commit 8daf9567c70eadb1385aab5b2ffd1133cc81799c
Author: Barthelemy Dagenais <bart@cs.mcgill.ca>
Date:   Fri Dec 4 13:59:06 2009 +0000

    Deleted code coverage. Will use something less invasive and less buggy.
```

Code by three people: a code base copied from another team, with 60% of magic code and 40% of the teams magic code.
The name of the repository and the name of the service are not alike, at all.
The next piece of code represents it all, a small excerpt from a large and poorly written codebase - it is production code, only were domain key words changed:

- kargs: the minimalist API footprint, ahead of someone's time. For all it matter, it's a find Wally's book but with global nested objects. 
- One class handler for each root path. 
- The manager pattern, or whatever that attempt was.

```python
def initialize_routes(api, **kwargs):
    # create API endpoints
    api.add_resource(HelloWorld, '/', resource_class_kwargs=kwargs)
    api.add_resource(UploadImageManager,
                     '/uploads',
                     endpoint='uploads',
                     resource_class_kwargs=kwargs)
    api.add_resource(HealthCheck, '/healthcheck', resource_class_kwargs=kwargs)
    api.add_resource(KennelManager,
                     '/kennels',
                     '/kennels/<string:kennel_id>',
                     resource_class_kwargs=kwargs)
    api.add_resource(RoomsManager,
                     '/kennels/<string:kennel_id>/rooms',
                     '/kennels/<string:kennel_id>/rooms/<floor>',
                     resource_class_kwargs=kwargs)
    api.add_resource(DogManager,
                     '/dog',
                     '/dog/group/<group_id>',
                     '/dog/kennel/<string:kennel_id>',
                     '/dog/dispensers/<dispenser_id>',
                     '/dog/<dog_id>',
                     resource_class_kwargs=kwargs)
    api.add_resource(FoodDispenserManager,
                     '/dispensers',
                     '/dispensers/<dispenser_id>',
                     resource_class_kwargs=kwargs)
    api.add_resource(DogPositionManager,
                     '/pos/dog',
                     '/pos/dog/group/<group_id>',
                     '/pos/dog/kennel/<string:kennel_id>',
                     '/pos/dog/dispensers/<dispenser_id>',
                     '/pos/dog/<dog_id>',
                     resource_class_kwargs=kwargs)
```

At this time, we sold one product: bugs. A lot of bugs and two days every two weeks for manual testing of the all service (and sometimes, platform).
Zero unit tests. The codebase was like a like meth addict in 1 and 0s.

Seen good open source and _enterprised_ open source.
Like reading nats go client from time to time.
Not perfect but enough is enough.

I have not seen an internal big codebase, I am afraid.
Code of big young tech companies may not be the best quality, but I'm sure is not worst.
I am not sure, but mostly is because the code ownership is shared between teams. 

Code matches the Organiztion equaly.