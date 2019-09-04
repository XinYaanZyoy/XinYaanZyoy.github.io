.DEFAULT_GOAL := menu

menu:
	echo "transform: to transform posts by transform.sh",
	echo "publish: to push posts to github.com"

transform:
	bash transform.sh

publish:
	git add posts/
	git commit -m "publish posts"
	git push origin HEAD:master