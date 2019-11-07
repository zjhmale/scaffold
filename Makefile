.PHONY:
	install
	run
	clean
	repl

install:
	opam switch create . 4.08.1
	eval $(opam config env)
	opam install merlin ocp-indent dune utop

run:
	dune exec bin/main.exe

clean:
	dune clean

repl:
	dune utop lib
