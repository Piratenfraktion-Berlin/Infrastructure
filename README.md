# Infrastructure

This is the main repository for the it infrastructure of a political fraction.

## recuirements

- git
- ruby and rubygems
- Virtualbox
- nfsd (windows is not supported out of the box yet, see http://vagrantup.com/docs/nfs.html )

## setup

    git clone git://github.com/Piratenfraktion-Berlin/Infrastructure.git
    cd Infrastructure
    gem install vagrant
    vagrant up

> wait some time for the box be loaded from our server...
maybe you have to insert your credentials to let vagrant setup your nfsd config

    vagrant ssh

enjoy! You have your devbox up and running.

## development

All work is done in the config directory. Be sure to take a look at
[salt](http://saltstack.org/home/)

Log into the devbox and start a config run to test your changes:

    sudo salt '*' state.highstate

## troubleshooting

### failing nfs mounts
This seems to be a Virtual Box problem. Do this to fix it:

* shutdown the devbox
* start the Virtual Box Manager
* Go to options -> network
* delete all networks
* start the devbox, vagrant will create a new host-only network

## contribution

__Please do!__ Just fork the repository here, make a topic branch, and send us a pull request.

## credits

Many thanks to elasticdog for his [salt sandbox](https://github.com/elasticdog/salt-sandbox.git), we used it's provision code for this.
