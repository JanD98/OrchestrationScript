apache2:
  pkg:
    - installed 

munin:
  pkg:
    - installed 

/var/www/munin:
  file.directory:
    - user: munin
    - name: /var/www/munin
    - group: munin
    - mode: 777 

/etc/munin/apache.conf:
  file.managed:
    - source: salt://munin/apache.conf
    - user: root
    - group: root
    - mode: 777 

/etc/apache2/conf-available/munin.conf:
  file.managed:
    - source: salt://munin/munin.conf
    - user: root
    - group: root
    - mode: 777 

/etc/apache2/conf-enabled/munin.conf:
  file.managed:
    - source: salt://munin/munin.conf
    - user: root
    - group: root
    - mode: 777 

/etc/munin/munin.conf:
  file.managed:
    - source: salt://munin/muninmaster.conf
    - user: root
    - group: root
    - mode: 777
    - template: jinja
    - defaults:
      ip_node: "10.0.0.9"
