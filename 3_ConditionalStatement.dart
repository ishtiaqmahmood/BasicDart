 void main() {
    String connection = "connected";

    if (connection == "connected") {
        print("You are connected to the internet.");
    }
    else if (connection == "connecting") {
        print("Connecting to the internet...");
    }
    else {
        print("You are not connected to the internet.");
    }

    switch (connection) {
        case "connected":
            print("You are connected to the internet.");
            break;
        case "connecting":
            print("Connecting to the internet...");
            break;
        default:
            print("You are not connected to the internet.");
    }
 }