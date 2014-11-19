.PHONY: all, 2.1, 2.2
all: 2.1 2.2

2.1: 2_out/2-1_sp.png

2.2: 2_out/2-2_sp_3x3.png


2_out/2-1_sp.png:
	octave -q 2.1.m

2_out/2-2_sp_3x3.png:
	octave -q 2.2.m

.PHONY: test, clean
test:
	octave -q tests.m

clean:
	rm 2_out/*
