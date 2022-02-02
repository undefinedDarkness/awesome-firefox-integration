.PHONY: install

install:
	mkdir -p $$HOME/.mozilla/native-messaging-hosts
	sed -E 's!/home/david/builds/tabs-interface/server.py!$(realpath ./server.py)!g' ./ipc_tabs.json > $$HOME/.mozilla/native-messaging-hosts/ipc_tabs.json
	zip -r -FS ../extension.zip * --exclude '*.git*'.	
