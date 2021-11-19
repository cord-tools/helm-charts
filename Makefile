update-docs:
	docker run --rm --volume "$(shell pwd):/helm-docs" -u "$(id -u)" jnorwood/helm-docs:v1.5.0

lint:
	docker run --rm --volume "$(shell pwd):/app" -w /app -u "$(id -u)" quay.io/helmpack/chart-testing ct lint --config ct.yaml