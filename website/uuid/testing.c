#include <stdio.h>
#include "uuid.h"

int main() {
    char uuid[100];
    char *timestamp = "1111111", *ip = "127.0.0.1";
    create_uuid(uuid, timestamp, ip);
    printf("%s", uuid);
    return 0;
}
