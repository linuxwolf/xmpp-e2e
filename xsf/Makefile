DEPLOYDIR=./deploy
SOURCES=extensions/p2p-sec.xml extensions/p2p-tls.xml
OBJS=$(SOURCES:.xml=.html)
OUTPUT=$(patsubst extensions/%.html, deploy/%.html, $(OBJS)) \
	   $(patsubst extensions/%.xml, deploy/%.xml, $(SOURCES))
STYLESHEET=extensions/xep.xsl
ENTITIES=extensions/xep.ent

XSLT=xsltproc $(STYLESHEET)
COPY=cp

all: $(OBJS)

deploy: all $(OUTPUT)

clean:
	rm -rf $(OBJS)

extensions/%.html: extensions/%.xml
	$(XSLT) $< > $@

deploy/%.html: extensions/%.html
	$(COPY) $< $@
deploy/%.xml: extensions/%.xml
	$(COPY) $< $@

.phony: all deploy clean
