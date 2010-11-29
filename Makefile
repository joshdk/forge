BIN_DIR  = /usr/bin/
MAN_DIR  = /usr/share/man/man1/

SUCCESS_MSG = "  [\e[32m DONE \e[0m]"

all: build

build:

clean:
	@echo "Cleaning workspace:"
	@echo -e $(SUCCESS_MSG)

rebuild: clean build

install: build
	@echo "Installing forge:"
	@cp -f src/forge $(BIN_DIR)
	@echo "Installing forge manpage:"
	@cp -f man/forge.1 $(MAN_DIR)
	@echo -e $(SUCCESS_MSG)

uninstall:
	@echo "Uninstalling forge:"
	@rm -f $(BIN_DIR)forge
	@echo "Uninstalling forge manpage:"
	@rm -f $(MAN_DIR)forge.1
	@echo -e $(SUCCESS_MSG)

