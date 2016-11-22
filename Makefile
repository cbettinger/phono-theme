usage:
	@echo "Invoke 'make install' to install this theme for the current user."

install:
	install -d ~/.icons/phono-theme
	install -m 644 icons/*.png ~/.icons/phono-theme
	install -m 644 .jwmrc ~/.jwmrc

uninstall:
	rm -rf ~/.icons/phono-theme
	rm -f ~/.jwmrc

.PHONY: usage install uninstall
