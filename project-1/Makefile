build:
	@docker-compose build
 
lint:
	@docker-compose run --rm app lint-test-script.sh
 
unit-tests:
	@docker-compose run --rm app unit-test-script.sh
 
e2e-tests:
    # Run dettached services (databases, queues, etc)
	@docker-compose up -d redis
    # # Run e2e jobs and wait for the status output
	@docker-compose run --no-deps app e2e-test-script.sh
 
clean:
    # remove with volumes
	@docker-compose down -v