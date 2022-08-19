init:
	git submodule update --init --recursive
build:
	rm -rf output
	node ergogen/src/cli.js wolpertinger.ergogen.yml -o output
	pcbnew output/pcbs/board.kicad_pcb
