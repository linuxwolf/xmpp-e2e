RFC2TXT=xml2txt
RFC2HTML=xml2html
DOCNAME=draft-miller-xmpp-e2e
INPUT=$(DOCNAME).xml
OUTPUT=$(DOCNAME).txt \
		$(DOCNAME).html

all :	$(OUTPUT)

clean :
	rm -rf $(OUTPUT)

%.html : %.xml
	$(RFC2HTML) $<

%.txt : %.xml
	$(RFC2TXT) $<

.PHONY : all
