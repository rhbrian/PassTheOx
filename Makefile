build:
	docker build -t pto-api .

run:
	docker run -it --rm -p 5000:5000 pto-api

lint:
	flake8 ./src ./test

black:
	black ./src ./test
