# microservice-gallery::media
As copied from [github microserverice-gallery](https://github.com/tvdtb/microservice-gallery) https://github.com/tvdtb/microservice-gallery
and then done up as a migration to [eclipse microprofile](https://microprofile.io) 

## What it is
A simple photo gallery microservice/HTML5 application, this version's backend is based upon

    <dependency>
        <groupId>org.eclipse.microprofile</groupId>
        <artifactId>microprofile</artifactId>
        <version>1.3</version>
        <type>pom</type>
    </dependency>


## What it not is
Completed

## Architecture
Eclipse microservice gased endpoints.

HTML5 frontend

Pure Filesystem persistence & caching

Json Web Tokens for Authentication 

Java Imaging APIs, FASTJson 




## Howto
Create directory .mediaresource in your user home, put a file config.json pointing to your pictures directory (path property):

   ```json
   {
	"album": {
		"dirFilter": "\\.cache",
		/* 0=album.name 1=album.path, 2=path, 3=fileName, 4=qualifier, 5=extension */
		"cacheDirPattern": "{1}/.cache/{2}/{3}.{4}.{5}",
		"alba": [
			{
				"name": "default",
				"path": "album",
			}
		]
	}
   }
   ```


Build project

   ```
   mvn package
   ```
   or build and run the server
   ```   
   mvn package liberty:run-server
   ```   



open 

   ```
   http://localhost:8080/media/
   ```
   

### NEW Version
From the project root (where the pom is)
To run it:
   ```
	mvn package liberty:run-server
   ```
To stop the server:
   ```
	mvn liberty:stop-server
   ```
(or use eclipse and the liberty server plugin)

http://localhost:8080/   --> GUI
http://localhost:8080/openapi  --> plain text openapi representation
http://localhost:8080/openapi/ui  --> nice html version of the openapi version 3
http://localhost:8080/health  --> example health report
https://localhost:8080/metrics  --> metrics report

#### Server Config
The server configuration is located at /media/src/main/liberty/config/server.xml
This also includes the enablement of each feature.
   
UI:

![screenshot0](https://user-images.githubusercontent.com/12240765/32807989-fc9019ec-c991-11e7-9655-db65beb4da15.jpg)

![screenshot1](https://user-images.githubusercontent.com/12240765/32807990-fcb35b96-c991-11e7-8411-df86483c0844.jpg)