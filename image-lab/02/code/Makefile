.PHONY: all
all:

2.1: 2_out/2-1_sp.png

2_out/2-1_sp.png:
	octave -q 2.1.m

.PHONY: test, clean
test:
	octave -q tests.m

clean:
	rm 2_out/*
