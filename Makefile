pdf:
	bundle install
	bundle exec jekyll serve --port 8765 --quiet --detach
	pipenv install
	pipenv run weasyprint http\://localhost\:8765/cv cv.pdf
	pipenv run weasyprint http\://localhost\:8765/emoji emoji.pdf
	pkill -f jekyll
