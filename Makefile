RFC2TXT=xml2rfc --text
RFC2HTML=xml2rfc --html
OUTPUT=draft-miller-xmpp-e2e.txt draft-miller-xmpp-e2e.html \
		draft-miller-jose-jwe-over-jwk.txt draft-miller-jose-jwe-over-jwk.html

all :	$(OUTPUT)

clean :
	rm -rf $(OUTPUT)

%.html : %.xml
	$(RFC2HTML) $<

%.txt : %.xml
	$(RFC2TXT) $<

.PHONY : all
