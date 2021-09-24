update-docs:
	docker run --rm --volume "$(shell pwd):/helm-docs" -u "$(id -u)" jnorwood/helm-docs:v1.5.0