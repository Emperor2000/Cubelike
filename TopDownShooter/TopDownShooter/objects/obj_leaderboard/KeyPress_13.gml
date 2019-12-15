///@description make http request
var port = 5001;
var domain = "localhost";
var connection = "http://"+string(domain)+":"+string(port)+"/api/players";
http_get("http://localhost:5001/api/players");