#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

void split_ip (char octets[3][4], char *ip) {
    int len = strlen(ip);

    int oi = 0, oj = 0;
    for(int i = 0; i < len; ++i) {
        if (ip[i] == '.') {
            octets[oi++][oj] = '\0';
            oj = 0;
        } else {
            octets[oi][oj++] = ip[i];
        }
    }
    octets[oi][oj] = '\0';
}

void create_uuid (char *uuid, char* timestamp, char* ip) {
    char octets[3][4];
    split_ip(octets, ip);
    char ip_part[13] = "000000000000";
    for(int i = 0; i < 4; ++i) {
        int olen = strlen(octets[i]);
        for(int j = 0; j < olen; ++j) {
            ip_part[i*3 + (3-olen) + j] = octets[i][j];
        }
    }

    char r_string[4]; //3 random digits
    int rnum;
    srand(time(NULL));

    for(int i = 0 ; i < 3; ++i) {
        r_string[i] = rand() % 10 + 48;
    }

    strcpy(uuid, "");
    strcat(uuid, "I");
    strcat(uuid, ip_part);
    strcat(uuid, "T");
    strcat(uuid, timestamp);
    strcat(uuid, "R");
    strcat(uuid, r_string);
}
