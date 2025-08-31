## 1. Goals

- [x] Build the technical indicators service.
- [x] Dockerize the technical indicators sevice by install the talib
- [x] Deploy to the Kubernetes cluster
- [ ] Kafka to the Risingwave database

## Learning

- Worflow
    - run local (makd dev service=trades)
    - run in the docker (docker run -it images_name:tag)
    - ship the docker image to the kubernetes cluster (kubectl apply -f deployments/dev/${service}/${service}.yaml)

- How to install talib in your local desktop?
    ```
    brew install talib
    uv install ...
    ```

- How to install talib in the Docker image?
bytewax

Quixstreams + NATS is used for IoT data volumes.

NATS is an alternative to Kafka which has less overhead and is more performat.

- Move the `ta-lib` library from the workspace `pyproject.toml` to the `pyproject.toml` of the `technical_indicators`
- Extract the hard-codes `sma_7`...
    I suggest you extract them to a `config.yaml` file that you load in to the `confil.yaml`