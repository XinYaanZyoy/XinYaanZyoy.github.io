.DEFAULT_GOAL := transform

transform:
	bash transform.sh
	# bash transform.sh $(STAGE)

# serve:
# 	python -m http.server $(PORT)