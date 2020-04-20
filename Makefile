PREFIX=/usr/local
PWD=$(shell pwd)

install:
	@echo "Installing scripts to ${PREFIX}..."
	mkdir -p ${PREFIX}/bin
	ln -fs ${PWD}/wx ${PREFIX}/bin/wx
	ln -fs ${PWD}/wx-fetch ${PREFIX}/bin/wx-fetch
	ln -fs ${PWD}/geo-fetch ${PREFIX}/bin/geo-fetch
	@echo "done!"

uninstall:
	@echo "Uninstalling scripts from ${PREFIX}..."
	rm -f ${PREFIX}/bin/wx ${PREFIX}/bin/wx-fetch ${PREFIX}/bin/geo-fetch
	@echo "done!"
