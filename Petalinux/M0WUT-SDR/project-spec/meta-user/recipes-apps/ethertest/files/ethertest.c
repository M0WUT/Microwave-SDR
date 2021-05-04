#include <stdio.h> 
#include <stdlib.h> 
#include <unistd.h> 
#include <string.h> 
#include <sys/types.h> 
#include <sys/socket.h> 
#include <arpa/inet.h> 
#include <netinet/in.h> 
#include <net/if.h>
#include <sys/ioctl.h>
#include <netdb.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>
#include <unistd.h>
#include <assert.h>
#include <math.h>

#define PORT 8080 
#define IOCTL_SET_ADDRESS _IO(202, 0)

int main(int argc, char const *argv[]) 
{ 
    int server_fd, new_socket, valread; 
    struct sockaddr_in address; 
    int opt = 1; 
    int addrlen = sizeof(address); 
    char buffer[1024] = {0}; 
    struct ifreq ifr;

    // Set FFT Freq to 28MHz
    int status_fd = open("/dev/statusregs", O_RDWR);
    assert(status_fd != -1);

    if(ioctl(status_fd, IOCTL_SET_ADDRESS, 0x02)){
        printf("IOCTL failed\n");
    }

    char *str = "2";
    write(status_fd, str, 1);

    if(ioctl(status_fd, IOCTL_SET_ADDRESS, 0x01)){
        printf("IOCTL failed\n");
    }

    char *str1 = "23456789";
    write(status_fd, str1, 8);


    if(ioctl(status_fd, IOCTL_SET_ADDRESS, 0x05)){
        printf("IOCTL failed\n");
    }

    char *str2 = "1502970112";
    write(status_fd, str2, 10);

    close(status_fd);


       
    // Creating socket file descriptor 
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) 
    { 
        perror("socket failed"); 
        exit(EXIT_FAILURE); 
    } 
       
    // Forcefully attaching socket to the port 8080 
    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, 
                                                  &opt, sizeof(opt))) 
    { 
        perror("setsockopt"); 
        exit(EXIT_FAILURE); 
    } 
    address.sin_family = AF_INET; 
    address.sin_addr.s_addr = INADDR_ANY; 
    address.sin_port = htons( PORT ); 
       
    // Forcefully attaching socket to the port 8080 
    if (bind(server_fd, (struct sockaddr *)&address,  
                                 sizeof(address))<0) 
    { 
        perror("bind failed"); 
        exit(EXIT_FAILURE); 
    } 
    if (listen(server_fd, 3) < 0) 
    { 
        perror("listen"); 
        exit(EXIT_FAILURE); 
    } 

    /* I want to get an IPv4 IP address */
    ifr.ifr_addr.sa_family = AF_INET;

    /* I want IP address attached to "eth0" */
    strncpy(ifr.ifr_name, "eth0", IFNAMSIZ-1);

    ioctl(server_fd, SIOCGIFADDR, &ifr);

    printf("SDR Server Setup on %s. Listening on Port %i\n", inet_ntoa(((struct sockaddr_in *)&ifr.ifr_addr)->sin_addr), PORT);

    if ((new_socket = accept(server_fd, (struct sockaddr *)&address,  
                       (socklen_t*)&addrlen))<0) 
    { 
        perror("accept"); 
        exit(EXIT_FAILURE); 
    } 

    printf("Incoming connection detected from %s\n", inet_ntoa(address.sin_addr));

    
    int fd = open("/dev/fft_dma", O_RDONLY);

    if(fd == -1){
       printf("ERROR Could not open DMA file\n");
        exit(-1);
    }

    printf("Starting data transfer...\n");

    int32_t tempData[2048];
    int dataSize = 2048 * 4;

    int i = 0;

    while(1){
        
        if(read(fd, tempData, dataSize) != dataSize) {
            printf("Incomplete Transaction\n");
        }
        printf("%d\n", ++i);
        send(new_socket , tempData , dataSize, 0);
    }
    sleep(1);
  
    
    close(fd);
    close(server_fd);
    return 0; 
} 