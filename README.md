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

enjoy! You have it up and running.

## development

all work is done in the data directory and the repositories linked within that directory.

## contribution

__Please do!__ Just fork the repository here, make a topic branch, and send us a pull request.

