#!/usr/bin/env bash
curl https://raw.githubusercontent.com/pypa/setuptools/bootstrap/ez_setup.py > /tmp/ez_setup.py
py_ver=`python -c 'import sys; print ".".join(str(x) for x in sys.version_info[:2])'`

for i in 2.6 2.7 3.1 3.2 3.3 3.4 3.5
do
  if [ "$i" != "$py_ver" ]
  then
    apt-get -y install python$i python$i-dev
    python$i /tmp/ez_setup.py
    easy_install-$i pip
  else
    echo "Default Python version is $i, installing dev libraries and pip only"
    apt-get install -y python$-dev
    python$i /tmp/ez_setup.py
    easy_install-$i pip
  fi
done
