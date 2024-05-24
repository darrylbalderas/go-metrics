start-run:
	docker build -t test-go-metrics .
	docker run --name test-go-metrics -p 2112:2112 -d test-go-metrics
stop-run:
	docker stop test-go-metrics
	docker rm test-go-metrics
start-metrics:
	docker-compose up -d
stop-metrics:
	docker-compose down
open-dashboard:
	open http://localhost:3000
	open http://localhost:9090
	open http://localhost:2112/metrics