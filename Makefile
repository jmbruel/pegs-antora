# requires npm i asciidoctor asciidoctor-kroki
# npm i asciidoctor asciidoctor-kroki
all:
	npx antora --fetch playbook.yml

# in case of "error: RPC failed; HTTP 400 curl 22 The requested URL returned error: 400"
fixgit:
	git config http.postBuffer 524288000
	git pull && pit push
