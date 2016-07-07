# pcf-demo-blog
Padrino Blog to use with Pivotal Cloud Foundry (PCF). The purpose of this Demo is to show PCFs ability to work with poliglot applications, this time it is a Padrino (Ruby) Application.
This demo can be run anywhere on a running PCF Instance, whether it is local (https://network.pivotal.io/products/pcfdev) or on PWS (http://run.pivotal.io) or your hosted instance. Please make sure the elephantsql tile has been installed or adapt the `config/database.rb` to another DB of your choice.

## Installation

### Create service

Create a new service instance for elephantsql named `smallelephant`. This can be done using the web interface or by using the cf commandline: 
`cf create-service elephantsql turtle smallelephant` where `turtle` is the plan you may want to choose (turtle is the free plan on PWS). Any changes to the service name should be reflected in the `manifest.yml`. This service will then be bound automatically.

### Migrate the database

https://docs.pivotal.io/pivotalcf/1-7/devguide/services/migrate-db.html is a pretty complete and comprehensive guide on how to migrate a database. If you do not want to automate this as described there, something like `cf push -c 'rake sq:migrate' -i 1` followed by a `cf push -c 'rake db:seed' -i 1` should work. `cf push -c 'null'` will then start the application as usual. 

## Hints & Tips

Any changes to work with PCF are documented in the database.rb, this demo uses the https://github.com/cloudfoundry/cf-app-utils-ruby gem. Some hints how to make this work without this gem have been added. 


