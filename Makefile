.PHONY: all clean run install

all clean run install:
	$(MAKE) -C src $@
