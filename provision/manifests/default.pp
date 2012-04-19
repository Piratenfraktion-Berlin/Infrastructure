#
# site.pp - defines defaults for vagrant provisioning
#

# use run stages to control overall module load order
stage { 'pre': before => Stage['main'] }

class { 'mirrors':    stage => 'pre' }
class { 'vagrant':    stage => 'pre' }

class { 'salt': }

class { 'salt::server': }
