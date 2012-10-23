#!/usr/bin/make
PROFILE_FILES = find `pwd` -maxdepth 1 -type f -name '.*' -exec basename {} ';'

install:
	$(PROFILE_FILES) | xargs -Ifoo ln -s `pwd`/foo ${HOME}/foo
	@echo "Profile installed"

uninstall:
	$(PROFILE_FILES) | xargs -Ifoo rm ${HOME}/foo
	@echo "Profile uninstalled"
