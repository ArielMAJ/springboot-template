up:
	docker compose up -d --force-recreate

down:
	docker compose down

recreate: down
	docker compose up --build --force-recreate

run:
	./mvnw spring-boot:run
