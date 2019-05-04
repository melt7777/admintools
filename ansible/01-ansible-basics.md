Ansible Notes


# Ad-hoc Commands

Make a file with the categories and hosts for ansible to use:

```
[webservers]
host-01
host-02
```

Ping a group: 

`ansible -u root -i hosts webservers -m ping`

Gather facts:

`ansible webservers -m setup`

Uptime of group:

`ansible webservers -a "uptime"`

Run a command in a shell loop:

`ansible webservers -m shell -a'for item in $(ls ~); do file $item; done'`

Install a package RH/Centos:

`ansible webservers -m yum -a "name=httpd state=latest"`

Install a package debian:

`ansible webservers -m apt -a "name=apache2 state=latest"`

Start a service:

`ansible webservers -m service -a "name=httpd state=started"`

Run a script:

`ansible webservers -m script -a "./create_content.sh"`

Deploy a file:

`ansible webservers -m copy -a 'src=index.html dest=/var/www/html/index.html'`
 
# Playbooks

Example of application that uses the facts gathered: ansible-cmdb

Set ansible.cfg for each project. 

```
- hosts: webservers
  gather_facts: True
  remote_user: root
  vars_files:
    - all.yml
  tasks:
```

Complex Playbooks - structure:

Install (put playbooks here)
group_vars (variables files)
Roles (where you keep individual roles)

my_role:
- Files (keep static files here)
- Tasks (keep roles here)
- Templates (keep jinja2 templates here)

## Handlers

- Handlers called by notify signal. 
- Runs only if notifying task changed. (vs. ok)
- Defined under handlers section, bottom of playbook

Example: restart apache only if its updated:

```
tasks:
  - name: ensure apache is latest
    yum:
      name: httpd
      state: latest
    become: true
    notify: restart apache

handlers:
  - name: restart apache
    become: true
    service: name=httpd state=restarted
```

We can use the fact items in conditionals (when statements) and also in debug output with {{ }}

You can always add a task using debug msg module to print out fact or variable values.
