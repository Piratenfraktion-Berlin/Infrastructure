{% for usr in 'acid','pbrechler' %}
{{ usr }}:
  user:
    - present
    - home: /home/{{ usr }}
    - groups:
      - wheel
      - users

/home/{{ usr }}/.ssh/authorized_keys:
  file:
    - managed
    - user: {{ usr }}
    - group: users
    - mode: 700
    - makedirs: True
    - source: salt://users/authorized_keys.{{ usr }}
{% endfor %}

{% for grp in 'wheel','users' %}
{{ grp }}:
  group:
    - present
{% endfor %}
