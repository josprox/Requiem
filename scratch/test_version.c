#include <stdio.h>
#include <libisofs/libisofs.h>
int main() {
    int major, minor, micro;
    iso_lib_version(&major, &minor, &micro);
    printf("libisofs version: %d.%d.%d\n", major, minor, micro);
    return 0;
}
