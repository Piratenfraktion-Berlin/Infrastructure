sudo:
  pkg:
    - installed
/etc/sudoers:
  file:
    - managed
    - source: salt://sudo/sudoers
    - user: root
    - group: wheel
    - mode: 400
    - require:
      - pkg: sudo
