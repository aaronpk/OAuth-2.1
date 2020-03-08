#!/bin/bash

kramdown-rfc2629 draft-parecki-oauth-v2-1.md > build/draft-parecki-oauth-v2-1.v2.xml

#curl https://xml2rfc.tools.ietf.org/cgi-bin/xml2rfc.cgi -F input=@build/oauth-2.1.xml -F 'modeAsFormat=txt/ascii' -F type=ascii > build/oauth-2.1.txt
#curl https://xml2rfc.tools.ietf.org/cgi-bin/xml2rfc.cgi -F input=@build/oauth-2.1.xml -F 'modeAsFormat=html/ascii' -F type=ascii > build/oauth-2.1.html

xml2rfc --v2v3 build/draft-parecki-oauth-v2-1.v2.xml -o build/draft-parecki-oauth-v2-1.xml
xml2rfc build/draft-parecki-oauth-v2-1.xml
xml2rfc --html --v3 build/draft-parecki-oauth-v2-1.xml
