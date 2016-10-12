# Google Cloud SDK as a snap

This is version 112.0.0 of the Google Cloud SDK packaged as a snap for Ubuntu
16.04. Snaps are a new packaging solution that bundles the application's
dependencies, which is one of the reasons it's a good fit for the Cloud SDK: the
SDK has many dependencies that are not in the Ubuntu archive.


## How do I use it?

First of all, make sure you have an up-to-date installation of Ubuntu 16.04, and
install [snapcraft][1], which is used for creating snaps:

    $ sudo apt install snapcraft

Now clone this repository:

    $ git clone https://github.com/OddBloke/google-cloud-sdk-snap.git

And start the snap building process:

    $ cd google-cloud-sdk-snap
    $ snapcraft

This will take a moment. Snapcraft will parse the `snapcraft.yaml` recipe
contained within the repository, fetch the SDK, and create a snap out of it.
Once it's completed you'll find a newly-created
`gcloud_112.0.0_amd64.snap`, which you can immediately install with:

    $ sudo snap install --force-dangerous gcloud_112.0.0_amd64.snap

gcloud can now be used like so:

    $ gcloud init


[1]: https://github.com/ubuntu-core/snapcraft
