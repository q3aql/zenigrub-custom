##############################
# Installing zenigrub-custom #
##############################

PREFIX=/usr

install:
	mkdir -p /opt/zenigrub-custom
	cp -rf src/zenigrub-custom /opt/zenigrub-custom/zenigrub-custom
	cp -rf src/zenigrub-custom-cli /opt/zenigrub-custom/zenigrub-custom-cli
	cp -rf src/zenigrub-custom-admin /opt/zenigrub-custom/zenigrub-custom-admin
	cp -rf icon/zenigrub-custom.png /opt/zenigrub-custom/zenigrub-custom.png
	cp -rf img/ /opt/zenigrub-custom/
	cp -rf src/zenigrub-custom.desktop $(PREFIX)/share/applications/zenigrub-custom.desktop
	rm -rf $(PREFIX)/bin/zenigrub-custom
	rm -rf $(PREFIX)/bin/zenigrub-custom-cli
	ln -s /opt/zenigrub-custom/zenigrub-custom $(PREFIX)/bin/zenigrub-custom
	ln -s /opt/zenigrub-custom/zenigrub-custom-cli $(PREFIX)/bin/zenigrub-custom-cli
	chmod +x $(PREFIX)/bin/zenigrub-custom
	chmod +x /opt/zenigrub-custom/zenigrub-custom
	chmod +x /opt/zenigrub-custom/zenigrub-custom-admin
	chmod +x $(PREFIX)/share/applications/zenigrub-custom.desktop
	
install-es:
	mkdir -p /opt/zenigrub-custom
	cp -rf src-ES/zenigrub-custom /opt/zenigrub-custom/zenigrub-custom
	cp -rf src-ES/zenigrub-custom-cli /opt/zenigrub-custom/zenigrub-custom-cli
	cp -rf src-ES/zenigrub-custom-admin /opt/zenigrub-custom/zenigrub-custom-admin
	cp -rf icon/zenigrub-custom.png /opt/zenigrub-custom/zenigrub-custom.png
	cp -rf img/ /opt/zenigrub-custom/
	cp -rf src-ES/zenigrub-custom.desktop $(PREFIX)/share/applications/zenigrub-custom.desktop
	rm -rf $(PREFIX)/bin/zenigrub-custom
	rm -rf $(PREFIX)/bin/zenigrub-custom
	ln -s /opt/zenigrub-custom/zenigrub-custom $(PREFIX)/bin/zenigrub-custom
	ln -s /opt/zenigrub-custom/zenigrub-custom-cli $(PREFIX)/bin/zenigrub-custom-cli
	chmod +x $(PREFIX)/bin/zenigrub-custom
	chmod +x /opt/zenigrub-custom/zenigrub-custom
	chmod +x /opt/zenigrub-custom/zenigrub-custom-admin
	chmod +x $(PREFIX)/share/applications/zenigrub-custom.desktop
	
uninstall:
	rm -rf /opt/zenigrub-custom
	rm -rf $(PREFIX)/bin/zenigrub-custom
	rm -rf $(PREFIX)/bin/zenigrub-custom-cli
	rm $(PREFIX)/share/applications/zenigrub-custom.desktop

