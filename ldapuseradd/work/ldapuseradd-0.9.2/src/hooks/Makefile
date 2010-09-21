SOBJS=hook_home.so hook_mail.so hook_sql.so hook_web.so hook_script.so
CFLAGS=-Wunused -I.. -I../.. -I../api -I../ldap -fPIC
CC=cc
LIB_DIR=/usr/pkg/lib/ldapuseradd

.PHONY: all clean install

all: $(SOBJS)

clean:
	-rm *.so

install:
	-install -d $(LIB_DIR)
	install *.so $(LIB_DIR)

%.so: %.c
	$(CC) -shared $(CFLAGS) -o $@ $<

