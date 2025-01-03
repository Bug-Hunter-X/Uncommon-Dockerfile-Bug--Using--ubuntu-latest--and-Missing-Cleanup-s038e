This repository demonstrates a common but subtle error in Dockerfiles: using `ubuntu:latest` and not cleaning up after `apt-get`. The `ubuntu:latest` tag is problematic because it can change unexpectedly between builds, leading to inconsistencies.  The lack of cleanup leads to bloated images.

The solution shows how to specify a version of Ubuntu and how to clean up after package installation using `apt-get autoremove` and `apt-get clean`.