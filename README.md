# My Onboaring Project Two

## Description
This is my second project on SRE onboarding to understand the ruby sinatra web application.

## SLO and SLI
* Availability: To be Defined
* Mean Response Time: To be Defined

## Architecture Diagram
```
+--------------------+        +------------------+         +---------+
|  Project Web API   | <--->  |  Ministore Gem   |  <--->  |  MySql  |
+--------------------+        +------------------+         +---------+
```

## Owner
[Setya Kurniawan](https://github.com/SetyaK)

## Contact and On-Call Information
[Setya Kurniawan](setya.kurniawan@bukalapak.com)

## Links

## Onboarding and Development Guide
### Prerequisite
1. Ministore Ruby Gem,  
  [Guide](https://github.com/SetyaK/BL-Onboarding1-Ruby)
### Setup
1. Build Ministore gem
2. Install required modules  
  `$ bundle install`
3. Run the application  
  `ruby ./main.rb`  
  Web application will run in port 4567
### Development Guide
You can use [POSTMAN](https://www.getpostman.com/) to test the API
#### API usage
- Test the app is run  
  `GET /`
- Get list of all products  
  `GET /product/`
- Get a product  
  `GET /product/[id]`
- Add new product  
  `POST /product`  
  Post variable:
  - `name`
  - `description`
  - `initial_stock`
- Update a product  
  `POST /product/[id]`
  Post variable:
  - `name`
  - `description`
- Delete a product  
  `DELETE /product/[id]`

## On-Call Runbooks

## F.A.Q.
