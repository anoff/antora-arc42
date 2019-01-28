.PHONY: copy-arc42 clean gen build deploy
SRC_DIR=./_arc42/
DIST_DIR=./dist/
clean: 
	rm -rf $(SRC_DIR)
	rm -rf $(DIST_DIR)
copy-arc42:
	mkdir -p $(SRC_DIR)modules/ROOT/pages/
	cp -R arc42-template/EN/asciidoc/** $(SRC_DIR)modules/ROOT/pages/
	cp _antora.yml $(SRC_DIR)antora.yml
gen:
	npx antora generate playbook.yml --to-dir $(DIST_DIR)
	touch $(DIST_DIR).nojekyll
build: clean copy-arc42 gen
