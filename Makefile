
clean:
	@echo "Cleaning barclamp-hadoop"

distclean:
	@echo "Dist-Cleaning barclamp-hadoop"

all: clean build install

build:
	@echo "Building barclamp-hadoop"

install:
	@echo "Installing barclamp-hadoop"
	mkdir -p ${DESTDIR}/opt/crowbar/crowbar_framework
	cp -r app ${DESTDIR}/opt/crowbar/crowbar_framework
	mkdir -p ${DESTDIR}/usr/share/barclamp-hadoop
	cp -r chef ${DESTDIR}/usr/share/barclamp-hadoop
	mkdir -p ${DESTDIR}/usr/bin
	cp -r command_line/* ${DESTDIR}/usr/bin

