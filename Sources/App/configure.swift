import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
	// serve files from /Public folder
	app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

	// use Leaf view templates
	app.views.use(.leaf)

	// register routes
	try routes(app)
}
