function command() {

    pi.message.headers["foo"] = "bar";
    pi.message.body = "HELLO WORLD IN THE BODY";

    var timestamp = pi.util.timestamp();
    pi.log.debug("Pipe script executed at: " + timestamp);

    var propValue = pi.property.get("global/script/helloworld");
}

