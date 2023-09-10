import Hummingbird

let app = HBApplication(configuration: .init(address: .hostname("0.0.0.0", port: 8080)))
app.router.get("hello") { request -> String in
    return "Hello"
}
try app.start()
app.wait()
