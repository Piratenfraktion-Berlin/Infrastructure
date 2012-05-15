base:
  '*':
    - core  # basic includes for all hosts belong to core.sls

  'roles:master':
    - match: grain
    #- salt.syndic
    - salt.master
    - motd

  'roles:ldapd':
    - match: grain
    - slapd

  'roles:app':
    - match: grain
    - apache

  'roles:lb':
    - match: grain
    - nginx

