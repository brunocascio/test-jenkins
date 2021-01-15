deploy:
	@docker-compose up -d
	@sleep 5s
	@echo "Echoing initial password: "
	@docker-compose exec jenkins sh -c "cat /var/jenkins_home/secrets/initialAdminPassword 2>/dev/null || echo 'You have already setup'"

clean:
	@docker-compose down

clean-with-data:
	@docker-compose down -v