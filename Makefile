GUIX-SHELL = guix time-machine -C .channels.scm -- shell

supplementals:
	$(GUIX-SHELL) -- sh -c "emacs --batch -Q  -l .init.el --eval '(process-org \"generate_supplementals.org\")'"

bom:
	$(GUIX-SHELL) -- sh -c "emacs --batch -Q  -l .init.el --eval '(process-org \"generate_bom.org\")'"
