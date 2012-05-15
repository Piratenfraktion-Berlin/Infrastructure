vim:
  pkg:
    - installed
    - name: {{ pillar['vim'] }}

/etc/vimrc:
  file:
    - managed
    - source: salt://edit/vimrc
    - user: root
    {% if grains['os'] == 'FreeBSD'%}
    - group: wheel
    {% else %}
    - group: root
    {% endif %}
    - mode: 644
    - makedirs: True
