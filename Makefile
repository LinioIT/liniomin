all: zopfli pngquant

pngquant:
	(cd tools/pngquant && ./configure)
	$(MAKE) $(MFLAGS) -C tools/pngquant

zopfli:
	$(MAKE) $(MFLAGS) -C tools/zopfli zopflipng

clean:
	$(MAKE) $(MFLAGS) -C tools/pngquant clean
	$(MAKE) $(MFLAGS) -C tools/zopfli clean

.PHONY: all zopfli pngquant clean
