ping -c 1 www.google.com | sed -ne '/.*time=/{;s///;s/\..*//;p;}'

