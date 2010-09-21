OBJS=argv_groupadd.o\
argv_groupdel.o\
argv_groupmod.o\
argv_useradd.o\
argv_userdel.o\
argv_usermod.o\
configfile.o\
getopt.o\
getopt1.o\
ldapuseradd.o\
userstate.o
LDAP_OBJS=$(patsubst %.c,%.o,$(wildcard ldap/*.c))
API_OBJS=$(patsubst %.c,%.o,$(wildcard api/*.c))
CC=cc
CFLAGS=-Wall -I.. -I. -Iapi -Ildap -fPIC -I/usr/include -I/usr/pkg/include/mysql
#TODO: --export-dynamic on non-GNU ld.
LDFLAGS=-Wl,-s -Wl,--export-dynamic -lintl
BIN_DIR=/usr/pkg/sbin

.PHONY: all clean install

all: ldapuseradd
	cd hooks; make

clean:
	-rm $(OBJS) $(LDAP_OBJS) $(API_OBJS) ldapuseradd
	cd hooks; make clean

install:
	-install -d $(BIN_DIR)
	install ldapuseradd $(BIN_DIR)
	-ln -s ldapuseradd $(BIN_DIR)/ldapusermod
	-ln -s ldapuseradd $(BIN_DIR)/ldapuserdel
	-ln -s ldapuseradd $(BIN_DIR)/ldapgroupadd
	-ln -s ldapuseradd $(BIN_DIR)/ldapgroupmod
	-ln -s ldapuseradd $(BIN_DIR)/ldapgroupdel
	cd hooks; make install

ldapuseradd: $(OBJS) $(LDAP_OBJS) $(API_OBJS)
	$(CC) -o ldapuseradd $(OBJS) $(LDAP_OBJS) $(API_OBJS) $(LDFLAGS) -lldap

