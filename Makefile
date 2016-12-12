ARCH ?=
CROSSCOMPILE ?=
export

all:
	$(MAKE) all -e -C src

clean:
	$(MAKE) clean -e -C src
