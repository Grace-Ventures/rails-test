# README

## Docker container commands

**Build Docker Image:** 
```
bin/build
```

**Launch Container:** 
```
bin/dev
```

**Run Automated Tests:** 
```
bin/test
```

**Editing Credentials:** 
```
bin/credentials
```

**Remove Unused Containers:** 
```
docker system prune
```

**Create Swagger/Spec File:** 
```
docker-compose run web rails generate rspec:swagger API::MyControllerName
```
