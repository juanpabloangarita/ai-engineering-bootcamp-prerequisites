run-docker-compose:
	uv sync
	docker compose up --build

clean-notebook-outputs:
	JUPYTER_CONFIG_DIR=$$(mktemp -d) uv run jupyter nbconvert --clear-output --inplace notebooks/*/*.ipynb
