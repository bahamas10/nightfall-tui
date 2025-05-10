.PHONY: check
check:
	shellcheck ./nightfall

# compile the web version
.PHONY: web
web:
	cat nightfall > web/index.txt

# deploy the website
.PHONY: deploy
deploy:
	rsync -avh --delete ./web/{index.html,index.txt,style.css} web:/var/www/nightfall.ysap.sh/
