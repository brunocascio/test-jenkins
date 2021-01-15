deploy:
	@docker-compose up -d
	@sleep 5s
	@echo "Echoing initial password: "
	@docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

clean:
	@docker-compose down

clean-with-data:
	@docker-compose down -v