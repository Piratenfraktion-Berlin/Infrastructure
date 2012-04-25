/etc/motd:
  file:
    - managed
    - source: salt://motd/motd
    - user: root
    - group: root
    - mode: 644

