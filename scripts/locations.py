#!/usr/bin/python3

import sys

from getopt import GetoptError, getopt
from jinja2 import Template

def main(argv):
    try:
        opts, args = getopt(argv, "h", ["home"])
    except GetoptError:
        sys.exit(1)

    home = False
    for opt, arg in opts:
        if opt in ("-h", "--home"):
            home = True

    with open("/etc/hosts.j2") as hosts_template:
        template = Template(hosts_template.read())
        with open("/etc/hosts", "wt", encoding="utf-8") as hosts:
            hosts.write(template.render(home=home))

if __name__ == "__main__":
    main(sys.argv[1:])
