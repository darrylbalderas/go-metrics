# go-metrics

Getting hands on with golang and prometheus integration

## Pre-req

- Install the following

    ```bash
    go get github.com/prometheus/client_golang/prometheus
    go get github.com/prometheus/client_golang/prometheus/promauto
    go get github.com/prometheus/client_golang/prometheus/promhttp
    ```


## Getting started

- `make start-run`
- `make start-metrics`
- Setup prometheus datasource
    - Click on the gear icon (⚙️) on the left sidebar to go to the configuration.
    - Click on "Data Sources".
    - Click on "Add data source".
    - Select "Prometheus" from the list of data sources.
    - In the "HTTP" section, set the URL to http://prometheus:9090.
    - Click "Save & Test" to verify the connection.
- Go to explore page on grafana (http://localhost:3000) and view metrics

## Clean up

- `make stop-run`
- `make stop-metrics`
