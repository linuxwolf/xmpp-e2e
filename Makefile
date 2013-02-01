RFC2TXT=xml2rfc --text
RFC2HTML=xml2rfc --html
SOURCES=draft-miller-xmpp-e2e.xml \
		draft-miller-jose-jwe-protected-jwk.xml
OUTPUT=$(SOURCES:.xml=.txt) \
		$(SOURCES:.xml=.html)

all :	$(OUTPUT)

clean :
	rm -rf $(OUTPUT)

%.html : %.xml
	$(RFC2HTML) $<

%.txt : %.xml
	$(RFC2TXT) $<

.PHONY : all
