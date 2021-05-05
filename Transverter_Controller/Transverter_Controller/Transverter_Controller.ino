
void setup() {
    // initialize the digital pin as an output.
    Serial.begin(9600);
    Serial1.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
    static String command = "";
    while(1) {
        while(!Serial1.available());
        char x = Serial1.read();
        if(x == '\n')
            break;
        else
            command += x;
    }
    if(command != "")
        Serial.println(command);


    command = "";
}
