PREFIX=/usr/local
PWD=$(shell pwd)

install:
	@echo "Installing scripts to ${PREFIX}..."
	mkdir -p ${PREFIX}/bin
	ln -s ${PWD}/wx ${PREFIX}/bin/wx
	ln -s ${PWD}/wx-fetch ${PREFIX}/bin/wx-fetch
	ln -s ${PWD}/geo-fetch ${PREFIX}/bin/geo-fetch
	@echo "done!"

uninstall:
	@echo "Uninstalling scripts from ${PREFIX}..."
	rm -f ${PREFIX}/bin/wx ${PREFIX}/bin/wx-fetch ${PREFIX}/bin/geo-fetch
	@echo "done!"
