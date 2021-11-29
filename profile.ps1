function work { 
	Set-Location -Path "$HOME\src"
	docker-compose build -- work
	docker-compose run --rm $args work
}