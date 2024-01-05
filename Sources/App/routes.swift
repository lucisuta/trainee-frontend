import Vapor

public struct Course: Encodable {
	var id: UUID
	var code: String
	var name: String
}

let courses = [
	Course(id: UUID.init(), code: "CSE100", name: "Introduction to Programming"),
	Course(id: UUID.init(), code: "CSE101", name: "Introduction to Algorithms"),
	Course(id: UUID.init(), code: "CSE102", name: "Advanced Data Structures"),
]

struct MainPageContext: Encodable {
	var title: String
	var courses: [Course]
}

func routes(_ app: Application) throws {
	app.get { req async throws in
		try await req.view.render("index", MainPageContext(title: "Trainee", courses: courses))
	}
}
