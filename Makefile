install:
	npx lerna bootstrap

build:
	npx lerna run build

build-all:
	npx lerna run build:all

build-docs: build
	npx lerna run docs:build --concurrency 1

update:
	./node_modules/lerna-update-wizard/bin/lernaupdate

release: build
	npx lerna publish --conventional-commits

release-ci: build
	npx lerna publish --conventional-commits --yes --no-git-reset

prerelease: build
	npx lerna publish --conventional-prerelease

release-docs:
	npx lerna run docs:deploy