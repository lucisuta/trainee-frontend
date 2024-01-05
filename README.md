# Trainee Frontend

Frontend demo application to be used with [trainee-cdk](https://github.com/lucisuta/trainee-cdk).

Developed using [Swift on Server](https://github.com/swift-server)
and the [Vapor](https://github.com/vapor) framework (including Leaf and Fluent).

### Prerequisites

Install the vapor client application. Follow the instructions on
the official Vapor website.

https://vapor.codes

On a Mac, you can use Homebrew to install the vapor client application
using the following command.

```sh
brew install vapor
```

### Generating Vapor Project

Go to a parent folder and run the Vapor `new` command.

```sh
vapor new trainee-frontend
```

The command will generate this project structure

* `trainee-frontend`
	* `Public` - Files to be served to client without processing (images, CSS files)
	* `Resources/Views` - Leaf templates
	* `Sources/App`
		* `Controllers` - Controllers that handle routes defined in `routes.swift`
		* `Migrations` - Database migrations
		* `Models` - Data models to be used in controllers
		* `configure.swift`
		* `entrypoint.swift`
		* `routes.swift`
	* `Tests`
	* `docker-compose.yml`
	* `Dockerfile`
	* `Package.swift`

### Swift Commands

To build the application into an executable run the command

```sh
swift build 
```

To build and run the application

```sh
swift run
```

To run the migrations

```sh
swift run App migrate --yes
```

To revert migrations

```sh
swift run App migrate --revert --yes
```
