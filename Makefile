.PHONY: copy-arc42 clean gen build
SRC_DIR=./_arc42/
clean: 
	rm -rf $(SRC_DIR)
	rm -rf ./build/
copy-arc42:
	mkdir -p $(SRC_DIR)modules/ROOT/pages/
	cp -R arc42-template/EN/asciidoc/** $(SRC_DIR)modules/ROOT/pages/
	cp _antora.yml $(SRC_DIR)antora.yml
gen:
	antora generate playbook.yml
build: clean copy-arc42 gen