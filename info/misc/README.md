# Misc

## Commands I always forget {#Links}

* Create a 20 characters long random password using /dev/urandom:

>$ cat /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | fold -w 20 | grep -i '[!@#$%^&*()_+{}|:<>?=]' | head -n 1