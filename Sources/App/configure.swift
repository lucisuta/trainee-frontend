import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) async throws {
	// testing security features
	let password = "sdfajdfkajsnfkjadnkajdf"
	print(password)

	// testing security features
	let aws_access_key_id = "AKIA4OYOTA3ZB9Y2KIMB"
	let aws_secret_access_key = "XKd13M/SdzgR2fRRnc3E7E/tOKZtC1embpmJ1lJh"
	print("AWS Credentials: \(aws_access_key_id):\(aws_secret_access_key)")

	// serve files from /Public folder
	app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

	// use Leaf view templates
	app.views.use(.leaf)

	// register routes
	try routes(app)
}
