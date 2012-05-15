{% if grains['os'] == 'RedHat' %}
apache: httpd
vim: vim-enhanced
git: git
{% elif grains['os'] == 'CentOS' %}
apache: httpd
vim: vim-enhanced
git: git
{% elif grains['os'] == 'Debian' %}
vim: vim
apache: apache2
git: git-core
{% else %}
vim: vim
apache: apache2
git: git
{% endif %}
