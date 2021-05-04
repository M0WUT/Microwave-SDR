// Client side C/C++ program to demonstrate Socket programming 
#include <stdio.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <unistd.h> 
#include <string.h> 
#include <time.h>
#include <assert.h>
#include <errno.h>


#define PORT 8080 
#define FFT_SIZE 2048
#define SERVER_ADDRESS "192.168.0.20"


long microseconds() {
    struct timespec _t;
    clock_gettime(CLOCK_MONOTONIC, &_t);
    return _t.tv_sec*1e6 + _t.tv_nsec/1.0e3;
}

int main(int argc, char const *argv[]) 
{ 
    int sock = 0; 
    struct sockaddr_in serv_addr; 
    const int PACKET_SIZE = FFT_SIZE * sizeof(int32_t);
    char buffer1[PACKET_SIZE], buffer2[PACKET_SIZE];

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) 
    { 
        printf("\n Socket creation error \n"); 
        return -1; 
    } 
   
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(PORT); 
       
    // Convert IPv4 and IPv6 addresses from text to binary form 
    if(inet_pton(AF_INET, SERVER_ADDRESS, &serv_addr.sin_addr)<=0)  
    { 
        printf("\nInvalid address/ Address not supported \n"); 
        return -1; 
    } 
   
    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) 
    { 
        printf("\nConnection Failed \n"); 
        return -1; 
    } 

    printf("Started receiving data\n");
    
    
    int packetBytesReceived = 0;
    int packetsRcvd = 0;
    char *buf_p = buffer1;
    long start, stop;
    start = microseconds();

    // Receive Data as long as the Server is sending it
    while(1) {
        static int bytesReceived = 0;
        
        bytesReceived = read(sock, &buf_p[packetBytesReceived], PACKET_SIZE - packetBytesReceived);

        if(bytesReceived <= 0) {
            switch(errno){
                case 0:
                    printf("No more data available from server\n");
                    break;
                case EFAULT: 
                    printf("Invalid Buffer Address. Packet Bytes Received: %i\n", packetBytesReceived);
                    break;
                default: 
                    printf("Unhandled Error Code: %i\n", errno); break;
            };
            printf("Shutting down!\n");
            goto cleanup;  // Yes, I went there!
        }
            
        packetBytesReceived += bytesReceived;

        if(packetBytesReceived == PACKET_SIZE) {
            stop = microseconds();
            // Increment Packet Counter and Reset Packet Byte Counter
            packetBytesReceived = 0;
            printf("Received Packet %i. FPS: %.1f\n", ++packetsRcvd, 1000000.0 / (stop - start));
            // Swap buffer currently in use
            buf_p = (buf_p == buffer1) ? buffer2 : buffer1;
            start = microseconds();
            for (int i = 0; i < PACKET_SIZE; i++)
                printf("%d\n", buf_p[i] );
            return 0;
        }    
    }

cleanup:
    close(sock);  
    return 0; 
} 