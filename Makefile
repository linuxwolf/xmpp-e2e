RFC2TXT=xml2txt
RFC2HTML=xml2html

all :	draft-miller-xmpp-e2e.txt draft-miller-xmpp-e2e.html

%.html : %.xml
	$(RFC2HTML) $<

%.txt : %.xml
	$(RFC2TXT) $<

.PHONY : all
