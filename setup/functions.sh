#!/bin/bash

# Function to install python requirements given a certain directory
python_setup_install() {
	if [[ $NO_PYTHON_INSTALL = 'no' ]];
	then
		cd $1
		if [[ $2 == '3' ]];
		then
			python3 setup.py install && python3 setup.py clean --all || true
		else
			python2.7 setup.py install && python2.7 setup.py clean --all || true
		fi
		cd ..
	fi
}


pip_install_reqs() {
	if [[ $NO_PIP_INSTALL = 'no' ]];
	then
		cd $1
		if [[ $2 == '3' ]];
		then
			pip3 install --no-cache-dir -r requirements.txt
		else
			python2.7 -m pip install --no-cache-dir -r requirements.txt
		fi
		cd ..
	fi
}
