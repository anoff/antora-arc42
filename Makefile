.PHONY: copy-arc42 clean
SRC_DIR=./_arc42/
clean: 
	rm -rf $(SRC_DIR)
copy-arc42:
	mkdir -p $(SRC_DIR)modules/ROOT/pages/
	cp -R arc42-template/EN/asciidoc/** $(SRC_DIR)modules/ROOT/pages/
	cp _antora.yml $(SRC_DIR)antora.yml