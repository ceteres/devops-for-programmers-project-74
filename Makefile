
start:
	docker compose up -d
start-tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
stop:
	docker compose stop || true
restart:
	docker compose restart

clear:
	docker compose down -v --remove-orphans || true

build:
	docker compose build

logs-tail:
	docker compose logs -f
logs:
	docker compose logs
