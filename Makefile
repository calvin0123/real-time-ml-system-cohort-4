############################################################
## Development
############################################################

# Runs the trades services as a standalone Python app (not Dockerized)
dev:
	uv run services/${service}/src/${service}/main.py

push-for-dev:
	kind load docker-image ${service}:dev --name rwml-34fa 

build-for-dev:
	docker build -t ${service}:dev -f docker/${service}.Dockerfile .

deploy-for-dev: build-for-dev push-for-dev
	kubectl delete -f deployments/dev/${service}/${service}.yaml --ignore-not-found=true
	kubectl apply -f deployments/dev/${service}/${service}.yaml

scale-down:
	kubectl scale deployment trades --replicas=0
	kubectl scale deployment candles --replicas=0
	kubectl scale deployment technical-indicators --replicas=0

scale-up:
	kubectl scale deployment trades --replicas=1
	kubectl scale deployment candles --replicas=2
	kubectl scale deployment technical-indicators --replicas=1


############################################################
## Production
############################################################

build-and-push-for-prod:
	export BUILD_DATE=$(date +%s) && \
	docker buildx build --push --platform linux/amd64 -t ghcr.io/calvin0123/${service}:0.1.1-beta.${BUILD_DATE} -f docker/${service}.Dockerfile .

deploy-for-prod:
	kubectl delete -f deployments/prod/${service}/${service}.yaml --ignore-not-found=true
	kubectl apply -f deployments/prod/${service}/${service}.yaml


lint:
	ruff check . --fix 
