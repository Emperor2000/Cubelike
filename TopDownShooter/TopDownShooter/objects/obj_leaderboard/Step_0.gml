///@description make http request
if (should_fetch) {
	var port = 5001;
	var domain = "localhost";
	var connection = "http://"+string(domain)+":"+string(port)+"/api/players";
	http_get(connection);
	alarm[0] = cooldown_fetch;
	should_fetch = false;

}


if (display == "") {
	display = "Contacting the server...";	
}