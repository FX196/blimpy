#!/usr/bin/env bash
if [[ $DIST == *"py3"* ]]; then
    python3 setup.py install; cd tests
    pip3 install coverage coveralls pyyaml
else
    python setup.py install; cd tests
    pip install coverage coveralls pyyaml
fi
apt-get install git
cd ..
coverage run --source=blimpy -m py.test
coverage report
coveralls
echo $TRAVIS_JOB_ID
echo $TRAVIS_BRANCH