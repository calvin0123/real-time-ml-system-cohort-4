# Session 2

- [x] Build a docker image for our `trades` service.
- [x] Deploy this image to our dev Kubernetes cluster
    - [x] Push the image to the docker registry
    - [x] Write a deploymen.yaml file -> Kubernetes file
    - [x] Trigger the deployment with `kubectl apply -f ... ` (manual deployment to start with)

- [x] Extract config parameters with pydantic-settings

- [ ] Automatic code linting and formatting with ruff and pre-commit
    - [x] Install ruff and precommit -> 
    ```
    uv tool install ruff@latest
    uv tool install pre-commit@latest
    ```
    - [ ] Set our precommit hooks
    - [ ] Test it works


Dev container into the cluster

building -> pushing -> deploy

uv add <folder>

## Challenges

- Rewrite the Dockerfile as a 2-stage build. If you manage to build an image with less than `300MB`
- Use secrete in the `trades.yaml` file instead of `env` parameters in the deployment. This is a bit of an overkill here, but it is super necessary when you want to pass things like API keys to your Python service.

