.PHONY: install

install:
	mkdir -p $$HOME/.mozilla/native-messaging-hosts
	sed -E 's!PATH-TO-SCRIPT!$(realpath ./server.py)!g' ./ipc_tabs.json > $$HOME/.mozilla/native-messaging-hosts/ipc_tabs.json
	# zip -r -FS ../extension.zip * --exclude '*.git*'.	

uninstall:
	rm $$HOME/.mozilla/native-messaging-hosts/ipc_tabs.json
	$(info "Removed system level interface, Upon removal of the firefox extension (manually) - `ipc_tabs' will be entirely uninstalled")
