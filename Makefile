all: bookworm

alpine bookworm bullseye buster jammy rockylinux9 rockylinux8:
	docker build --pull \
	  --build-arg http_proxy \
	  --tag dalibo/buildpack-mig:$@ \
	  --file Dockerfile.$@ \
	.

push-%:
	docker push dalibo/buildpack:$*
