# Trainee Frontend

Frontend demo application to be used with [trainee-cdk](https://github.com/lucisuta/trainee-cdk).

Developed using [Swift on Server](https://github.com/swift-server)
and the [Vapor](https://github.com/vapor) framework (including the Leaf library).

### Prerequisites

Follow the instructions on the official Vapor website to install the client application. 

https://vapor.codes

On a Mac, you can use Homebrew to install the CLI using the following command.

```sh
brew install vapor
```

### Generating Vapor Project

Run the Vapor `new` command.

```sh
vapor new trainee-frontend
```

The command will generate a `trainee-frontend` folder with this structure

* `trainee-frontend`
	* `Public` - Files to be served to client without processing (images, CSS files)
	* `Resources/Views` - Leaf templates
	* `Sources/App`
		* `Controllers` - Controllers that handle routes defined in `routes.swift`
		* `configure.swift`
		* `entrypoint.swift`
		* `routes.swift`
	* `Tests`
	* `docker-compose.yml`
	* `Dockerfile`
	* `Package.swift`

### Build and Run Application Locally

To build the application into an executable run the command

```sh
swift build 
```

To build and run the application

```sh
swift run
```

To build and run the unit tests

```sh
swift test
```
