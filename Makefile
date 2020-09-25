.PHONY: dev npm build

dev:
	docker run --rm -v ${PWD}:/app -w /app -p 3000:3000 node:14.4 npm start

npm:
	docker run --rm -v ${PWD}:/app -w /app node:14.4 npm $(cmd)

build:
	docker run --rm  -v ${PWD}:/app -w /app node:14.4 npm install
	docker run --rm -v ${PWD}:/app -w /app node:14.4 npm run build
